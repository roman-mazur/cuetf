package jsonschema

import (
	"fmt"
	"io"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"

	. "rmazur.io/cuetf/internal/testtools"
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
				"aws_vpn_connection",
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
			name: "google",
			examples: []string{
				"provider",
				"google_compute_instance",
			},
		},
		{
			name: "cloudflare",
			examples: []string{
				"provider",
				"cloudflare_zero_trust_gateway_logging",
				"cloudflare_zone_setting",
			},
		},
		{
			name: "elasticstack",
			examples: []string{
				"provider",
				"elasticstack_elasticsearch_info",
				"elasticstack_elasticsearch_index",
				"elasticstack_kibana_data_view",
				"elasticstack_fleet_agent_policy",
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
	RunCUE(t, workDir, "vet", "-c")
	RunCUE(t, workDir, "export")
}

func runGen(t *testing.T, provider string, names []string) string {
	t.Helper()
	dst := t.TempDir()
	initTestModule(t, dst, provider)

	filter := fmt.Sprintf("^(%s)$", strings.Join(names, "|"))
	cmd := exec.Command("go", "run", "../../cmd/gen", "-v", "-f", filter,
		filepath.Join("../..", provider, "internal/schema/schema.json"), dst)
	RunCommand(t, cmd)
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

func initTestModule(t *testing.T, workDir string, provider string) {
	RunCUE(t, workDir, "mod", "init", "github.com/roman-mazur/cuetf")
	RunCommand(t, exec.Command("cp", "-r", "..", filepath.Join(workDir, "internal")))
	providerDir := filepath.Join(workDir, provider)
	RunCommand(t, exec.Command("mkdir", providerDir))
	RunCommand(t, exec.Command("cp", filepath.Join("../..", provider, "terraform_gen.cue"), providerDir))
	RunCommand(t, exec.Command("cp", filepath.Join("../..", provider, "version_gen.cue"), providerDir))
}
