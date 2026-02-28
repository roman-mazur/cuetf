// Command embed can be used to add CUE definitions for the specified Terraform provider
// to your source tree.
package main

import (
	"errors"
	"flag"
	"fmt"
	"io"
	"io/fs"
	"log"
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
	"strings"

	embedassets "rmazur.io/cuetf/internal"
	"rmazur.io/cuetf/internal/gen"
)

type options struct {
	filter   string
	exclude  string
	verbose  bool
	logTime  bool
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
	if !opts.logTime {
		log.SetFlags(0)
	}

	repoRoot, err := findRepoRootWithCUE(dir)
	if err != nil {
		return err
	}

	if err := installInternalDeps(repoRoot); err != nil {
		return err
	}

	providerName := opts.name
	if providerName == "" {
		providerName = filepath.Base(opts.source)
	}
	if providerName == "." || providerName == "/" || providerName == "" {
		return errors.New("cannot detect provider name from source, pass -name explicitly")
	}

	schemaPath, err := buildProviderSchema(opts.source, providerName, opts.version)
	if err != nil {
		return err
	}
	defer func() { _ = os.RemoveAll(filepath.Dir(schemaPath)) }()

	outRoot := filepath.Join(repoRoot, "cue.mod", "pkg", filepath.FromSlash(moduleName))
	cfg := &gen.Config{
		SchemaPath:      schemaPath,
		OutputPath:      outRoot,
		Version:         opts.version,
		Verbose:         opts.verbose,
		LogTime:         opts.logTime,
		WriteModuleFile: true,

		GenerateDefs:      opts.defs,
		GenerateMappings:  opts.mappings,
		GenerateInterface: opts.iface,
	}
	if opts.filter != "" {
		cfg.IncludeFilter = regexp.MustCompile(opts.filter)
	}
	if opts.exclude != "" {
		cfg.ExcludeFilter = regexp.MustCompile(opts.exclude)
	}

	g := gen.NewGenerator(log.Printf)
	return g.Generate(cfg)
}

func parseArgs(args []string) (options, error) {
	flagSet := flag.NewFlagSet("embed", flag.ContinueOnError)

	var opt options
	flagSet.StringVar(&opt.filter, "f", "", "Definition name filter (regexp, what to include)")
	flagSet.StringVar(&opt.exclude, "e", "", "Exclusion name filter (regexp, what to exclude)")
	flagSet.BoolVar(&opt.verbose, "v", false, "Verbose mode")
	flagSet.BoolVar(&opt.logTime, "t", false, "Log time")
	flagSet.BoolVar(&opt.defs, "defs", true, "Whether to regenerate all the defs")
	flagSet.BoolVar(&opt.mappings, "mappings", true, "Whether to regenerate the mappings")
	flagSet.BoolVar(&opt.iface, "iface", true, "Whether to generate the user-exposed interface")
	flagSet.StringVar(&opt.name, "name", "", "Provider short name (defaults to source base, e.g. hashicorp/aws -> aws)")

	if err := flagSet.Parse(args); err != nil {
		return options{}, err
	}
	opt.source = flagSet.Arg(0)
	if opt.source == "" {
		return options{}, errors.New("provider source is not specified (expected: embed [flags] <provider-source> [version])")
	}
	opt.version = flagSet.Arg(1)
	return opt, nil
}

func buildProviderSchema(source, providerName, version string) (string, error) {
	tmpDir, err := os.MkdirTemp("", "cuetf-embed-*")
	if err != nil {
		return "", fmt.Errorf("cannot create temp dir: %w", err)
	}

	versionAttr := ""
	if version != "" {
		versionAttr = fmt.Sprintf("\n      version = %q", version)
	}

	corpus := fmt.Sprintf(`terraform {
  required_providers {
    %s = {
      source  = %q%s
    }
  }
}
`, providerName, source, versionAttr)

	if err := os.WriteFile(filepath.Join(tmpDir, "corpus.tf"), []byte(corpus), 0666); err != nil {
		return "", fmt.Errorf("cannot write corpus.tf: %w", err)
	}

	if err := runCommand(tmpDir, "terraform", "init", "-upgrade"); err != nil {
		return "", err
	}

	schemaPath := filepath.Join(tmpDir, "schema.json")
	out, err := os.Create(schemaPath)
	if err != nil {
		return "", fmt.Errorf("cannot create schema output: %w", err)
	}
	defer func() { _ = out.Close() }()

	cmd := exec.Command("terraform", "providers", "schema", "-json")
	cmd.Dir = tmpDir
	cmd.Stderr = os.Stderr
	cmd.Stdout = out
	if err := cmd.Run(); err != nil {
		return "", fmt.Errorf("terraform providers schema failed: %w", err)
	}

	return schemaPath, nil
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
		modFile := filepath.Join(dir, "cue.mod", "module.cue")
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

const moduleName = "github.com/roman-mazur/cuetf"

func installInternalDeps(repoRoot string) error {
	moduleRoot := filepath.Join(repoRoot, "cue.mod", "pkg", filepath.FromSlash(moduleName))
	dstBase := filepath.Join(moduleRoot, "internal")
	if err := copyCueDir(embedassets.InternalCUE, ".", dstBase); err != nil {
		return err
	}
	return nil
}

func copyCueDir(srcFS fs.FS, srcDir, dst string) error {
	return fs.WalkDir(srcFS, srcDir, func(path string, d fs.DirEntry, err error) error {
		if err != nil {
			return err
		}
		if d.IsDir() {
			return nil
		}
		if filepath.Ext(path) != ".cue" {
			return nil
		}
		rel, err := filepath.Rel(srcDir, path)
		if err != nil {
			return err
		}
		dstPath := filepath.Join(dst, rel)
		if err := os.MkdirAll(filepath.Dir(dstPath), 0777); err != nil {
			return err
		}
		return copyFileFromFS(srcFS, path, dstPath)
	})
}

func copyFileFromFS(srcFS fs.FS, src, dst string) error {
	in, err := srcFS.Open(src)
	if err != nil {
		return err
	}
	defer func() { _ = in.Close() }()

	out, err := os.Create(dst)
	if err != nil {
		return err
	}

	if _, err := io.Copy(out, in); err != nil {
		_ = out.Close()
		return err
	}
	return out.Close()
}
