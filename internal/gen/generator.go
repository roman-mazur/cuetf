package gen

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"log"
	"os"
	"os/exec"
	"path"
	"path/filepath"
	"regexp"
	"strings"
	"time"
)

// TODO: Refactor to avoid so many arguments.

func Generate(schemaPath string, outPath string, defs bool, mappings bool, filter string, logTime bool, verbose bool) error {
	sf, err := os.Open(schemaPath)
	if err != nil {
		return fmt.Errorf("could not open schema file: %w", err)
	}
	defer sf.Close()

	var fullData terraformData
	err = json.NewDecoder(sf).Decode(&fullData)
	if err != nil {
		return fmt.Errorf("could not parse schema file: %w", err)
	}

	for provider, data := range fullData.ProviderSchemas {
		shortName := path.Base(provider)
		providerPath := filepath.Join(outPath, shortName)

		if defs {
			generateDefs(filter, data, providerPath, logTime, verbose)
		}
		if mappings {
			generateMappings(providerPath, shortName)
		}
	}
	return nil
}

func generateDefs(filter string, data providerSchema, providerPath string, logTime, verbose bool) {
	processSchema(filter, "provider", data.Provider, providerPath, "1/1", logTime, verbose)

	done := make(chan struct{})
	go func() {
		generateMapDefs(filter, data.Resources, filepath.Join(providerPath, "res"), logTime, verbose)
		done <- struct{}{}
	}()
	go func() {
		generateMapDefs(filter, data.DataSources, filepath.Join(providerPath, "data"), logTime, verbose)
		done <- struct{}{}
	}()
	<-done
	<-done
}

func generateMapDefs(filter string, data map[string]*schemaData, dir string, logTime bool, verbose bool) {
	i := 0
	for name, schema := range data {
		i++
		processSchema(filter, name, schema, dir, fmt.Sprintf("%d/%d", i, len(data)), logTime, verbose)
	}
}

func generateMappings(providerPath string, pkgName string) {
	createFile(
		filepath.Join(providerPath, "resources_gen.cue"),
		mappingHeader(pkgName, "res")+
			mapping("_res", "res", listDefs(filepath.Join(providerPath, "res"))),
	)
	createFile(
		filepath.Join(providerPath, "ds_gen.cue"),
		mappingHeader(pkgName, "data")+
			mapping("_ds", "data", listDefs(filepath.Join(providerPath, "data"))),
	)
}

func mappingHeader(pkgName, typ string) string {
	const code = `package %s

import "github.com/roman-mazur/cuetf/%s/%s"

`
	return fmt.Sprintf(code, pkgName, pkgName, typ)
}

func mapping(prefix string, typ string, defs []string) string {
	var res bytes.Buffer
	for _, d := range defs {
		_, _ = fmt.Fprintf(&res, "%s: %s: %s.#%s\n", prefix, d, typ, d)
	}
	return res.String()
}

func listDefs(p string) []string {
	entries, err := os.ReadDir(p)
	if err != nil {
		return nil
	}
	res := make([]string, 0, len(entries))
	for _, e := range entries {
		if e.IsDir() {
			continue
		}
		name, _ := strings.CutSuffix(e.Name(), "_gen.cue")
		res = append(res, name)
	}
	return res
}

func shouldProcess(filter, name string) bool {
	if filter == "" {
		return true
	}

	r, err := regexp.Compile(filter)
	if err != nil {
		log.Fatal("bad filter", filter)
	}
	return r.MatchString(name)
}

func processSchema(filter, name string, s *schemaData, dir string, logPrefix string, logTime bool, verbose bool) {
	if !shouldProcess(filter, name) {
		return
	}

	log.Println(logPrefix, name, "at", dir)
	_ = os.MkdirAll(dir, 0777)

	start := time.Now()
	defer func() {
		timeInfo := ""
		if logTime {
			timeInfo = fmt.Sprintf(" in %s", time.Since(start))
		}
		log.Printf("DONE%s: %s at %s", timeInfo, name, dir)
	}()

	inputFile, err := os.Create(filepath.Join(dir, name+"-input.json"))
	if err != nil {
		panic(err)
	}
	storeInput(s, inputFile)
	if err := inputFile.Close(); err != nil {
		panic(err)
	}

	createFile(filepath.Join(dir, name+"-transform.cue"), fmt.Sprintf(transformCode, name))

	pkgName := filepath.Base(dir)

	transformCmd := exec.Command("bash", "-c", fmt.Sprintf(exportCode, pkgName, name))
	transformCmd.Dir = dir
	output, err := transformCmd.CombinedOutput()
	if err != nil {
		log.Printf("ERROR with %s: %s", name, err)
	}
	if len(output) > 0 {
		log.Printf("ERROR with %s", name)
		if verbose {
			log.Println(string(output))
		}
	}
}

func storeInput(d *schemaData, out io.Writer) {
	err := json.NewEncoder(out).Encode(struct {
		Input blockData `json:"input"`
	}{
		Input: d.Block,
	})
	if err != nil {
		panic(err)
	}
}

func createFile(p string, data string) {
	err := os.WriteFile(p, []byte(data), 0666)
	if err != nil {
		panic(err)
	}
}

type terraformData struct {
	ProviderSchemas map[string]providerSchema `json:"provider_schemas"`
}

type providerSchema struct {
	Provider    *schemaData            `json:"provider"`
	Resources   map[string]*schemaData `json:"resource_schemas"`
	DataSources map[string]*schemaData `json:"data_source_schemas"`
}

type schemaData struct {
	Block blockData `json:"block"`
}

type blockData map[string]any

const transformCode = `package tmp

import "github.com/roman-mazur/cuetf/internal/jsonschema"

jsonSchema: jsonschema.#SchemaTransform & {#block: input, #name: %q}
`

// This script performs the transformation of terraform schema into a jsonschema, then
// importing it into CUE (as a CUE definition).
// The export/import operations are done in an isolated folder/package not to interfere with other definitions.
const exportCode = `
pkg_name=%q
def_name=%q

[ -d ./tmp ] && rm -rf ./tmp
mkdir -p ./tmp 2>/dev/null

mv *.json ./tmp
mv *-transform.cue ./tmp

mkdir ./tmp/$pkg_name

(cd ./tmp && cue import -p tmp -f && cue export -e jsonSchema > jsonschema.json) && \
	cue import -p $pkg_name -f -l "#${def_name}:" -o ./tmp/${pkg_name}/${def_name}_gen.cue jsonschema: ./tmp/jsonschema.json && \
	mv ./tmp/${pkg_name}/${def_name}_gen.cue .

rm -rf ./tmp 
`
