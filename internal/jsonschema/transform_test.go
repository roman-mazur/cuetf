package jsonschema

import (
	"encoding/json"
	"fmt"
	"io"
	"os"
	"os/exec"
	"path"
	"path/filepath"
	"regexp"
	"strconv"
	"strings"
	"testing"

	"cuelang.org/go/cue"
	"cuelang.org/go/cue/cuecontext"
	"cuelang.org/go/cue/load"
	"rmazur.io/cuetf/internal/gen"
	. "rmazur.io/cuetf/internal/testtools"
)

//go:generate bash ./testdata/sample/gen.sh

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
		runTestCase := func(name string) {
			t.Run(name, func(t *testing.T) {
				t.Parallel()
				testProvider(t, tc.name, tc.examples)
			})
		}
		runTestCase(path.Join(tc.name, "main"))

		if os.Getenv("CATCH_RACES") != "" {
			for i := range 30 {
				runTestCase(path.Join(tc.name, "catch", strconv.Itoa(i)))
			}
		}
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
	g := gen.NewGenerator(t.Logf)
	err := g.Generate(&gen.Config{
		SchemaPath:        filepath.Join("../..", provider, "internal/schema/schema.json"),
		OutputPath:        dst,
		Version:           "0.0.1",
		GenerateDefs:      true,
		GenerateMappings:  true,
		GenerateInterface: true,
		IncludeFilter:     regexp.MustCompile(filter),
		LogTime:           true,
		Verbose:           true,
	})
	if err != nil {
		t.Fatal(err)
	}
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
}

func TestSample(t *testing.T) {
	ctx := cuecontext.New()
	instns := load.Instances([]string{"./testdata/sample"}, nil)
	t.Log("instances count:", len(instns))
	v := ctx.BuildInstance(instns[0])
	if err := v.Err(); err != nil {
		t.Fatal(err)
	}
	schema := v.LookupPath(cue.MakePath(cue.Str("jsonSchema")))
	if schema.Err() != nil {
		t.Error(schema.Err())
	}
	data, _ := json.Marshal(schema)
	t.Log("size:", len(data))
}
