// Command embed can be used to add CUE definitions for the specified Terraform provider
// to your source tree.
package main

import (
	"errors"
	"flag"
	"fmt"
	"log"
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
	"strings"

	"rmazur.io/cuetf/internal/gen"
)

const (
	cuetfModulePath = "github.com/roman-mazur/cuetf"
	cueModuleFile   = "cue.mod/module.cue"
)

type options struct {
	filter   string
	exclude  string
	verbose  bool
	defs     bool
	mappings bool
	iface    bool
	name     string

	source  string
	version string
}

func main() {
	if err := Run(".", os.Args[1:]); err != nil {
		log.Fatal(err)
	}
}

func Run(dir string, args []string) error {
	opts, err := parseArgs(args)
	if err != nil {
		return err
	}

	repoRoot, err := findRepoRootWithCUE(dir)
	if err != nil {
		return err
	}
	if err := InstallInternalDeps(repoRoot, cuetfModulePath); err != nil {
		return err
	}

	providerName, err := opts.providerName()
	if err != nil {
		return err
	}
	schemaPath, cleanup, err := buildProviderSchema(opts.source, providerName, opts.version)
	if err != nil {
		return err
	}
	defer cleanup()

	g := gen.NewGenerator(log.Printf)
	return g.Generate(opts.toGenConfig(repoRoot, schemaPath))
}

func parseArgs(args []string) (options, error) {
	flagSet := flag.NewFlagSet("embed", flag.ContinueOnError)

	var opt options
	flagSet.StringVar(&opt.filter, "f", "", "Definition name filter (regexp, what to include)")
	flagSet.StringVar(&opt.exclude, "e", "", "Exclusion name filter (regexp, what to exclude)")
	flagSet.BoolVar(&opt.verbose, "v", false, "Verbose mode")
	flagSet.BoolVar(&opt.defs, "defs", true, "Whether to regenerate all the defs")
	flagSet.BoolVar(&opt.mappings, "mappings", true, "Whether to regenerate the mappings")
	flagSet.BoolVar(&opt.iface, "iface", true, "Whether to generate the user-exposed interface")
	flagSet.StringVar(&opt.name, "name", "", "Provider short name (defaults to source base, e.g. hashicorp/aws -> aws)")

	if err := flagSet.Parse(args); err != nil {
		return options{}, err
	}

	opt.source = flagSet.Arg(0)
	if opt.source == "" {
		return options{}, errors.New("provider source is not specified (expected: embed [flags] <provider-source> <version>)")
	}
	opt.version = flagSet.Arg(1)
	if opt.version == "" {
		return options{}, errors.New("provider version is not specified (expected: embed [flags] <provider-source> <version>)")
	}
	return opt, nil
}

func (o options) providerName() (string, error) {
	if o.name != "" {
		return o.name, nil
	}
	provider := filepath.Base(o.source)
	if provider == "." || provider == "/" || provider == "" {
		return "", errors.New("cannot detect provider name from source, pass -name explicitly")
	}
	return provider, nil
}

func (o options) toGenConfig(repoRoot string, schemaPath string) *gen.Config {
	cfg := &gen.Config{
		SchemaPath:      schemaPath,
		OutputPath:      filepath.Join(repoRoot, "cue.mod", "pkg", filepath.FromSlash(cuetfModulePath)),
		Version:         o.version,
		Verbose:         o.verbose,
		LogTime:         true,
		WriteModuleFile: true,

		GenerateDefs:      o.defs,
		GenerateMappings:  o.mappings,
		GenerateInterface: o.iface,
	}
	if o.filter != "" {
		cfg.IncludeFilter = regexp.MustCompile(o.filter)
	}
	if o.exclude != "" {
		cfg.ExcludeFilter = regexp.MustCompile(o.exclude)
	}
	return cfg
}

func buildProviderSchema(source, providerName, version string) (schemaPath string, cleanup func(), err error) {
	tmpDir, err := os.MkdirTemp("", "cuetf-embed-*")
	if err != nil {
		return "", nil, fmt.Errorf("cannot create temp dir: %w", err)
	}
	cleanup = func() { _ = os.RemoveAll(tmpDir) }

	if err := writeCorpusTF(tmpDir, source, providerName, version); err != nil {
		cleanup()
		return "", nil, err
	}
	if err := runCommand(tmpDir, "terraform", "init", "-upgrade"); err != nil {
		cleanup()
		return "", nil, err
	}

	schemaPath = filepath.Join(tmpDir, "schema.json")
	out, err := os.Create(schemaPath)
	if err != nil {
		cleanup()
		return "", nil, fmt.Errorf("cannot create schema output: %w", err)
	}
	defer func() { _ = out.Close() }()

	cmd := exec.Command("terraform", "providers", "schema", "-json")
	cmd.Dir = tmpDir
	cmd.Stderr = os.Stderr
	cmd.Stdout = out
	if err := cmd.Run(); err != nil {
		cleanup()
		return "", nil, fmt.Errorf("terraform providers schema failed: %w", err)
	}

	return schemaPath, cleanup, nil
}

func writeCorpusTF(dir, source, providerName, version string) error {
	corpus := fmt.Sprintf(`terraform {
  required_providers {
    %s = {
      source  = %q
      version = %q
    }
  }
}
`, providerName, source, version)

	if err := os.WriteFile(filepath.Join(dir, "corpus.tf"), []byte(corpus), 0666); err != nil {
		return fmt.Errorf("cannot write corpus.tf: %w", err)
	}
	return nil
}

func runCommand(dir string, name string, args ...string) error {
	cmd := exec.Command(name, args...)
	cmd.Dir = dir
	cmd.Stderr = os.Stderr
	cmd.Stdout = os.Stdout
	if err := cmd.Run(); err != nil {
		return fmt.Errorf("%s failed: %w", strings.Join(append([]string{name}, args...), " "), err)
	}
	return nil
}

func findRepoRootWithCUE(start string) (string, error) {
	dir, err := filepath.Abs(start)
	if err != nil {
		return "", err
	}

	for {
		modFile := filepath.Join(dir, cueModuleFile)
		if st, err := os.Stat(modFile); err == nil && !st.IsDir() {
			return dir, nil
		}
		next := filepath.Dir(dir)
		if next == dir {
			return "", errors.New("cannot find cue.mod/module.cue in current directory tree")
		}
		dir = next
	}
}
