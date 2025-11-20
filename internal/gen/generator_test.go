package gen

import (
	"encoding/json"
	"flag"
	"fmt"
	"os"
	"regexp"
	"testing"
)

func TestShouldProcess(t *testing.T) {
	for _, tc := range []struct {
		include, exclude string
		name             string
		expected         bool
	}{
		{name: "anything", expected: true},
		{include: "abc", name: "bcd", expected: false},
		{include: "bc", name: "bcd", expected: true},
		{exclude: "bc", name: "bcd", expected: false},
		{exclude: "abc", name: "bcd", expected: true},
		{include: "abc", exclude: "bcd", name: "abcd", expected: false},
		{include: "abc", exclude: "bcd", name: "abc", expected: true},
	} {
		testName := fmt.Sprintf("inc=%s/exc=%s/name=%s/expected=%t", tc.include, tc.exclude, tc.name, tc.expected)
		t.Run(testName, func(t *testing.T) {
			var cfg Config
			if tc.include != "" {
				cfg.IncludeFilter = regexp.MustCompile(tc.include)
			}
			if tc.exclude != "" {
				cfg.ExcludeFilter = regexp.MustCompile(tc.exclude)
			}
			if res := ShouldProcess(&cfg, tc.name); res != tc.expected {
				t.Errorf("ShouldProcess(cfg, %q) == %t, expected %t", tc.name, res, tc.expected)
			}
		})
	}
}

var genSample = flag.Bool("gen-sample", false, "generate big transform sample")

func TestExportBigSample(t *testing.T) {
	if !*genSample {
		t.Skip("for manual usage")
	}
	var data terraformData
	err := parseTerraformData("../../aws/internal/schema/schema.json", &data)
	if err != nil {
		t.Fatal(err)
	}
	res := data.ProviderSchemas["registry.terraform.io/hashicorp/aws"].Resources
	dst, err := os.Create("../jsonschema/testdata/sample/input.json")
	if err != nil {
		t.Fatal(err)
	}
	t.Cleanup(func() {
		if err := dst.Close(); err != nil {
			t.Fatal(err)
		}
	})
	err = json.NewEncoder(dst).Encode(res["aws_quicksight_analysis"])
	if err != nil {
		t.Fatal(err)
	}
}
