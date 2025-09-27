package gen

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"os"
	"os/exec"
	"path"
	"path/filepath"
	"regexp"
	"strings"
	"time"
)

type Options struct {
	GenerateDefs     bool
	GenerateMappings bool
	Filter           string

	LogTime bool
	Verbose bool

	Logf Logf
}

type Logf func(format string, v ...interface{})

func Generate(schemaPath string, outPath string, opts Options) error {
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
	_ = sf.Close()

	if opts.Logf == nil {
		opts.Logf = func(format string, v ...interface{}) {}
	}

	for provider, data := range fullData.ProviderSchemas {
		shortName := path.Base(provider)
		providerPath := filepath.Join(outPath, shortName)

		if opts.GenerateDefs {
			generateDefs(opts, data, providerPath)
		}
		if opts.GenerateMappings {
			generateMappings(providerPath, shortName)
		}
	}
	return nil
}

func generateDefs(opts Options, data providerSchema, providerPath string) {
	processSchema(opts, "provider", data.Provider, providerPath, "1/1")

	if strings.Contains(providerPath, "hashicorp/aws") {
		// AWS is too big and takes a lot of memory. Slow down, minimize the mem usage.
		generateMapDefs(opts, data.Resources, filepath.Join(providerPath, "res"))
		generateMapDefs(opts, data.DataSources, filepath.Join(providerPath, "data"))
		return
	}

	// Parallelize data sources and resources.
	done := make(chan struct{})
	go func() {
		generateMapDefs(opts, data.Resources, filepath.Join(providerPath, "res"))
		done <- struct{}{}
	}()
	go func() {
		generateMapDefs(opts, data.DataSources, filepath.Join(providerPath, "data"))
		done <- struct{}{}
	}()
	<-done
	<-done
}

func generateMapDefs(opts Options, data map[string]*schemaData, dir string) {
	i := 0
	for name, schema := range data {
		i++
		processSchema(opts, name, schema, dir, fmt.Sprintf("%d/%d", i, len(data)))
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
		panic(err)
	}
	return r.MatchString(name)
}

func processSchema(opts Options, name string, s *schemaData, dir string, logPrefix string) {
	if !shouldProcess(opts.Filter, name) {
		return
	}

	opts.Logf("%s %s at %s", logPrefix, name, dir)
	_ = os.MkdirAll(dir, 0777)

	start := time.Now()
	defer func() {
		timeInfo := ""
		if opts.LogTime {
			timeInfo = fmt.Sprintf(" in %s", time.Since(start))
		}
		opts.Logf("DONE%s: %s at %s", timeInfo, name, dir)
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
		opts.Logf("ERROR with %s: %s", name, err)
	}
	if len(output) > 0 {
		opts.Logf("ERROR with %s", name)
		if opts.Verbose {
			opts.Logf("%s", string(output))
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
