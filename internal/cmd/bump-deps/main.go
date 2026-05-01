// Command bump-deps updates the github.com/roman-mazur/cuetf@v0 dependency version
// in all provider cue.mod/module.cue files. If no version is given it defaults to
// the latest git tag.
package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"os/exec"
	"path/filepath"
	"strings"

	"cuelang.org/go/cue/ast"
	"cuelang.org/go/cue/format"
	"cuelang.org/go/cue/parser"
)

const rootDep = "github.com/roman-mazur/cuetf@v0"

func main() {
	flag.Parse()
	version := flag.Arg(0)
	if version == "" {
		var err error
		version, err = latestTag()
		if err != nil {
			log.Fatalf("no version given and could not read latest git tag: %v", err)
		}
		fmt.Printf("using latest tag: %s\n", version)
	}

	const providersDir = "./providers"
	entries, err := os.ReadDir(providersDir)
	if err != nil {
		log.Fatal("cannot read providers directory: ", err)
	}

	for _, entry := range entries {
		if !entry.IsDir() || strings.HasPrefix(entry.Name(), ".") {
			continue
		}
		modFile := filepath.Join(providersDir, entry.Name(), "cue.mod", "module.cue")
		if err := bumpVersion(modFile, version); err != nil {
			log.Fatalf("%s: %v", modFile, err)
		}
		fmt.Printf("updated %s\n", modFile)
	}
}

func bumpVersion(path, version string) error {
	src, err := os.ReadFile(path)
	if err != nil {
		return err
	}

	f, err := parser.ParseFile(path, src, parser.ParseComments)
	if err != nil {
		return fmt.Errorf("parse: %w", err)
	}

	if !setDepVersion(f, version) {
		return fmt.Errorf("dependency %q not found", rootDep)
	}

	out, err := format.Node(f, format.Simplify())
	if err != nil {
		return fmt.Errorf("format: %w", err)
	}
	return os.WriteFile(path, out, 0o644)
}

// setDepVersion walks the AST to find deps."github.com/roman-mazur/cuetf@v0".v
// and updates its value. Returns true if the field was found and updated.
func setDepVersion(f *ast.File, version string) bool {
	for _, decl := range f.Decls {
		field, ok := decl.(*ast.Field)
		if !ok {
			continue
		}
		name, _, _ := ast.LabelName(field.Label)
		if name != "deps" {
			continue
		}
		depsStruct, ok := field.Value.(*ast.StructLit)
		if !ok {
			continue
		}
		for _, d := range depsStruct.Elts {
			depEntry, ok := d.(*ast.Field)
			if !ok {
				continue
			}
			label, _, _ := ast.LabelName(depEntry.Label)
			if label != rootDep {
				continue
			}
			depBody, ok := depEntry.Value.(*ast.StructLit)
			if !ok {
				continue
			}
			for _, dd := range depBody.Elts {
				vField, ok := dd.(*ast.Field)
				if !ok {
					continue
				}
				vName, _, _ := ast.LabelName(vField.Label)
				if vName != "v" {
					continue
				}
				vField.Value = ast.NewString(version)
				return true
			}
		}
	}
	return false
}

func latestTag() (string, error) {
	out, err := exec.Command("git", "describe", "--tags", "--abbrev=0").Output()
	if err != nil {
		return "", err
	}
	return strings.TrimSpace(string(out)), nil
}
