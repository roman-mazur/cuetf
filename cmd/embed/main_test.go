package main

import (
	"fmt"
	"net"
	"os"
	"os/exec"
	"path"
	"path/filepath"
	"strings"
	"testing"
)

func TestRun(t *testing.T) {
	if _, err := exec.LookPath("terraform"); err != nil {
		t.Skipf("terraform binary is unavailable in this environment: %v", err)
	}
	if _, err := net.LookupHost("registry.terraform.io"); err != nil {
		t.Skipf("terraform registry DNS is unavailable in this environment: %v", err)
	}

	for _, tc := range []struct {
		provider         string
		version          string
		expectedResource string
	}{
		{provider: "hashicorp/helm", version: "2.0", expectedResource: "helm_release"},
		{provider: "integrations/github", version: "6.11.0", expectedResource: "github_repo"},
	} {
		t.Run(path.Join(tc.provider, tc.version), func(t *testing.T) {
			tmpRepo := makeCueModule(t)
			t.Log("repo path:", tmpRepo)
			args := []string{"-v", tc.provider, tc.version}
			if err := Run(tmpRepo, args); err != nil {
				t.Fatalf("Run(%q, %v) failed: %v", tmpRepo, args, err)
			}

			const modulePath = "github.com/roman-mazur/cuetf"
			helmRoot := filepath.Join(tmpRepo, "cue.mod", "pkg", filepath.FromSlash(modulePath), path.Base(tc.provider))
			if _, err := os.Stat(filepath.Join(helmRoot, "provider_gen.cue")); err != nil {
				t.Fatalf("provider schema was not generated: %v", err)
			}

			versionBytes, err := os.ReadFile(filepath.Join(helmRoot, "version_gen.cue"))
			if err != nil {
				t.Fatal(err)
			}
			if !strings.Contains(string(versionBytes), fmt.Sprintf("#Version: %q", tc.version)) {
				t.Fatalf("unexpected version file content:\n%s", string(versionBytes))
			}

			mappingBytes, err := os.ReadFile(filepath.Join(helmRoot, "resources_gen.cue"))
			if err != nil {
				t.Fatal(err)
			}
			if !strings.Contains(string(mappingBytes), tc.expectedResource) {
				t.Fatalf("expected resource %s is missing: %s", tc.expectedResource, string(mappingBytes))
			}
		})
	}

}

func makeCueModule(t *testing.T) string {
	t.Helper()
	tmpRepo := filepath.Join(t.TempDir(), "repo")
	if err := os.MkdirAll(filepath.Join(tmpRepo, "cue.mod"), 0777); err != nil {
		t.Fatal(err)
	}
	const moduleName = "example.com/acme/cuepkg"
	moduleCue := "module: \"" + moduleName + "\"\n"
	if err := os.WriteFile(filepath.Join(tmpRepo, "cue.mod", "module.cue"), []byte(moduleCue), 0666); err != nil {
		t.Fatal(err)
	}
	return tmpRepo
}
