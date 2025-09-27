package gen

import (
	"fmt"
	"os/exec"
	"strings"
	"testing"
)

func TestGenerate(t *testing.T) {
	opts := Options{
		GenerateMappings: true,
		GenerateDefs:     true,
		Logf: func(fmt string, args ...any) {
			t.Logf(fmt, args...)
			if strings.Contains(fmt, "ERROR") {
				t.Errorf(fmt, args...)
			}
		},
		LogTime: true,
		Verbose: true,
	}
	dir := t.TempDir()

	out, err := exec.Command("bash", "-c", fmt.Sprintf(prepareScript, dir)).CombinedOutput()
	if err != nil {
		t.Log(string(out))
		t.Fatal(err)
	}

	err = Generate("testdata/helm-schema.json", dir, opts)
	if err != nil {
		t.Fatal(err)
	}
}

const prepareScript = `
set -e
dir="%s"
mkdir -p $dir/internal
cp -R ../jsonschema "$dir/internal/jsonschema"
cp -R ../tf "$dir/internal/tf"
cp -R ../../cue.mod "$dir/cue.mod"
`
