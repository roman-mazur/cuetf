package jsonschema

import (
	"fmt"
	"io"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"
)

func TestProviders(t *testing.T) {
	for _, tc := range []struct {
		name     string
		examples []string
	}{
		{
			name: "aws",
			examples: []string{
				"provider",
				"aws_instance",
				"aws_acm_certificate",
				"aws_security_group",
				"aws_appintegrations_event_integration",
			},
		},
		{
			name: "github",
			examples: []string{
				"provider",
				"github_issue",
				"github_branch",
			},
		},
		{
			name: "elasticstack",
			examples: []string{
				"provider",
				"elasticstack_elasticsearch_info",
				"elasticstack_elasticsearch_index",
			},
		},
		{
			name: "helm",
			examples: []string{
				"provider",
				"helm_template",
				"helm_release",
			},
		},
	} {
		t.Run(tc.name, func(t *testing.T) {
			t.Parallel()
			testProvider(t, tc.name, tc.examples)
		})
	}
}

func testProvider(t *testing.T, provider string, names []string) {
	basePath := runGen(t, provider, names)
	workDir := filepath.Join(basePath, provider)
	injectSamples(t, provider, workDir)
	runCue(t, workDir, []string{"vet"})
	runCue(t, workDir, []string{"export"})
}

func runGen(t *testing.T, provider string, names []string) string {
	t.Helper()
	dst := t.TempDir()
	initTestModule(t, dst, provider)

	filter := fmt.Sprintf("^(%s)$", strings.Join(names, "|"))
	cmd := exec.Command("go", "run", "../../cmd/gen", "-v", "-f", filter,
		filepath.Join("../..", provider, "internal/schema/schema.json"), dst)
	runCmd(t, cmd)
	return dst
}

func injectSamples(t *testing.T, provider string, dst string) {
	t.Helper()
	src, err := os.Open("testdata/" + provider + ".cue")
	if err != nil {
		t.Fatal(err)
	}
	t.Cleanup(func() {
		_ = src.Close()
	})
	sampleDst, err := os.Create(filepath.Join(dst, "samples.cue"))
	if err != nil {
		t.Fatal(err)
	}
	t.Cleanup(func() {
		err = sampleDst.Close()
		if err != nil {
			t.Fatal(err)
		}
	})
	_, err = io.Copy(sampleDst, src)
	if err != nil {
		t.Fatal(err)
	}
}

func runCue(t *testing.T, wd string, args []string) {
	t.Helper()
	cmd := exec.Command("cue", args...)
	cmd.Dir = wd
	runCmd(t, cmd)
}

func initTestModule(t *testing.T, workDir string, provider string) {
	runCue(t, workDir, []string{"mod", "init", "github.com/roman-mazur/cuetf"})
	runCmd(t, exec.Command("cp", "-r", "..", filepath.Join(workDir, "internal")))
	providerDir := filepath.Join(workDir, provider)
	runCmd(t, exec.Command("mkdir", providerDir))
	runCmd(t, exec.Command("cp", filepath.Join("../..", provider, "terraform.cue"), providerDir))
}

func runCmd(t *testing.T, cmd *exec.Cmd) {
	t.Helper()
	out, err := cmd.CombinedOutput()
	if len(out) > 0 {
		t.Log(string(out))
	}
	if err != nil {
		t.Fatal(err)
	}
}
