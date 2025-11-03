package gen

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"maps"
	"os"
	"os/exec"
	"path"
	"path/filepath"
	"regexp"
	"slices"
	"strings"
	"sync"
	"text/template"
	"time"

	"rmazur.io/cuetf/internal/clog"
)

type Config struct {
	SchemaPath string
	OutputPath string
	Version    string

	GenerateDefs      bool
	GenerateMappings  bool
	GenerateInterface bool

	IncludeFilter *regexp.Regexp
	ExcludeFilter *regexp.Regexp

	LogTime bool
	Verbose bool
}

type Generator struct {
	lg *clog.Logger
}

func NewGenerator(logf clog.Logf) *Generator {
	return &Generator{lg: clog.New(logf)}
}

func (g *Generator) Generate(cfg *Config) error {
	var fullData terraformData
	if err := parseTerraformData(cfg.SchemaPath, &fullData); err != nil {
		return err
	}

	for provider, data := range fullData.ProviderSchemas {
		shortName := path.Base(provider)
		providerPath := filepath.Join(cfg.OutputPath, shortName)

		if cfg.GenerateDefs {
			g.generateDefs(cfg, data, providerPath)
		}
		if cfg.GenerateMappings {
			generateMappings(providerPath, shortName)
		}
		if cfg.GenerateInterface {
			generateInterface(providerPath, provider, shortName)
		}
	}
	return nil
}

func parseTerraformData(p string, d *terraformData) error {
	sf, err := os.Open(p)
	if err != nil {
		return fmt.Errorf("could not open schema file: %w", err)
	}
	defer sf.Close()

	err = json.NewDecoder(sf).Decode(&d)
	if err != nil {
		return fmt.Errorf("could not parse schema file: %w", err)
	}
	return nil
}

func (g *Generator) generateDefs(cfg *Config, data providerSchema, providerPath string) {
	var wg sync.WaitGroup

	wg.Go(func() {
		processSchema(cfg, g.lg.LogPart(clog.PartProvider), "provider", data.Provider, providerPath, "1/1")
		if cfg.Version != "" {
			providerName := filepath.Base(providerPath)
			createFile(
				filepath.Join(providerPath, "version_gen.cue"),
				fmt.Sprintf("package %s\n\n#Version: %q\n", providerName, cfg.Version),
			)
		}
		g.lg.Finish(clog.PartProvider)
	})

	wg.Go(func() {
		generateMapDefs(cfg, g.lg.LogPart(clog.PartResources), data.Resources, filepath.Join(providerPath, "res"))
		g.lg.Finish(clog.PartResources)
	})

	wg.Go(func() {
		generateMapDefs(cfg, g.lg.LogPart(clog.PartDataSources), data.DataSources, filepath.Join(providerPath, "data"))
		g.lg.Finish(clog.PartDataSources)
	})

	wg.Wait()
}

func generateMapDefs(cfg *Config, logf clog.Logf, data map[string]*schemaData, dir string) {
	keys := slices.Collect(maps.Keys(data))
	slices.Sort(keys)
	for i, name := range keys {
		schema := data[name]
		processSchema(cfg, logf, name, schema, dir, fmt.Sprintf("%d/%d", i+1, len(data)))
	}
}

func generateMappings(providerPath string, pkgName string) {
	createFile(
		filepath.Join(providerPath, "resources_gen.cue"),
		wrapWithMappingHeader(pkgName, "res",
			mapping("_#res", "res", pkgName, listDefs(filepath.Join(providerPath, "res")))),
	)
	createFile(
		filepath.Join(providerPath, "ds_gen.cue"),
		wrapWithMappingHeader(pkgName, "data",
			mapping("_#ds", "data", pkgName, listDefs(filepath.Join(providerPath, "data")))),
	)
}

func generateInterface(providerPath string, providerUri string, pkgName string) {
	const tpl = `package {{.PackageName}}

import "github.com/roman-mazur/cuetf/internal/tfjson"

#Terraform: tfjson.#Schema & {
	#{{.PackageName}}Prefix:       string | *{{.PackageName | printf "%q"}}
	let prefix = #{{.PackageName}}Prefix
	_#{{.PackageName}}ProviderName: =~"^\(prefix)_.+"
	let providerName = _#{{.PackageName}}ProviderName

	_#res: [providerName]: _
	_#ds: [providerName]:  _

	terraform?: required_providers?: (prefix): {
		source:  {{.Source | printf "%q"}}
		version: #Version
	}
	provider?: (prefix): #provider

	resource?: [type=providerName]: [name=string]: _#res[type]
	data?: [type=providerName]: [name=string]:     _#ds[type]
}
`

	var code bytes.Buffer
	template.Must(template.New("terraform").Parse(tpl)).Execute(&code, struct {
		PackageName string
		Source      string
	}{
		PackageName: pkgName,
		Source:      strings.TrimPrefix(providerUri, "registry.terraform.io/"),
	})

	createFile(
		filepath.Join(providerPath, "terraform_gen.cue"),
		code.String(),
	)
}

func wrapWithMappingHeader(pkgName, typ, content string) string {
	const code = `package %s

import "github.com/roman-mazur/cuetf/%s/%s"

#Terraform: {
	#%sPrefix: string
%s
}
`
	return fmt.Sprintf(code, pkgName, pkgName, typ, pkgName, content)
}

func mapping(prefix string, typ string, provider string, defs []string) string {
	var res bytes.Buffer
	for _, d := range defs {
		prefixDef := fmt.Sprintf(`"\(#%sPrefix)_%s"`, provider, strings.TrimPrefix(d, provider+"_"))
		_, _ = fmt.Fprintf(&res, "\t%s: %s: %s.#%s\n", prefix, prefixDef, typ, d)
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

func ShouldProcess(cfg *Config, name string) bool {
	if cfg.IncludeFilter == nil && cfg.ExcludeFilter == nil {
		return true
	}
	if cfg.IncludeFilter != nil && !cfg.IncludeFilter.MatchString(name) {
		return false
	}
	if cfg.ExcludeFilter != nil && cfg.ExcludeFilter.MatchString(name) {
		return false
	}
	return true
}

func processSchema(cfg *Config, logf clog.Logf, name string, s *schemaData, dir string, logPrefix string) {
	if !ShouldProcess(cfg, name) {
		return
	}

	logf("%s %s at %s", logPrefix, name, dir)
	_ = os.MkdirAll(dir, 0777)

	start := time.Now()
	defer func() {
		timeInfo := ""
		if cfg.LogTime {
			timeInfo = fmt.Sprintf(" in %s", time.Since(start))
		}
		logf("DONE%s: %s at %s", timeInfo, name, dir)
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
		logf("ERROR with %s: %s", name, err)
	}
	if len(output) > 0 {
		logf("ERROR with %s", name)
		if cfg.Verbose {
			logf(string(output))
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
