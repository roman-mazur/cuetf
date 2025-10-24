// Command pversion retrieves the provider version parsing the corpus.tf file.
package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"path/filepath"
	"strings"

	"github.com/hashicorp/hcl/v2"
	"github.com/hashicorp/hcl/v2/hclsimple"
)

func main() {
	flag.Parse()
	provider := flag.Arg(0)

	const corpusFile = "corpus.tf"

	raw, err := os.ReadFile(filepath.Join(provider, "internal", corpusFile))
	if err != nil {
		log.Fatal("cannot read corpus file: ", err)
	}

	type Provider struct {
		Source  string `hcl:"source,attr" cty:"source"`
		Version string `hcl:"version,attr" cty:"version"`
	}

	var data struct {
		Terraform struct {
			RequiredVersion   string `hcl:"required_version,optional"`
			RequiredProviders struct {
				Providers map[string]Provider `hcl:",remain"`
			} `hcl:"required_providers,block"`
		} `hcl:"terraform,block"`
	}

	err = hclsimple.Decode("src.hcl", raw, new(hcl.EvalContext), &data)
	if err != nil {
		log.Fatal("cannot parse corpus file: ", err)
	}

	version := data.Terraform.RequiredProviders.Providers[provider].Version
	version = strings.TrimPrefix(version, "= ")
	fmt.Println(version)
}
