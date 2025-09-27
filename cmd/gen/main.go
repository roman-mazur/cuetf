// Command gen can be used to generate the CUE definitions from a Terraform provider schema.
//
//	gen provider-schema.json output/dir
package main

import (
	"flag"
	"log"

	"rmazur.io/cuetf/internal/gen"
)

func main() {
	var opts gen.Options
	flag.StringVar(&opts.Filter, "f", "", "Definition name filter (regexp)")
	flag.BoolVar(&opts.Verbose, "v", false, "Verbose mode")
	flag.BoolVar(&opts.LogTime, "t", false, "Log time")
	flag.BoolVar(&opts.GenerateDefs, "defs", true, "Whether to regenerate all the defs")
	flag.BoolVar(&opts.GenerateMappings, "mappings", true, "Whether to regenerate the mappings")

	flag.Parse()
	if opts.LogTime {
		log.SetFlags(0)
	}

	schemaPath := flag.Arg(0)
	if schemaPath == "" {
		log.Fatal("schema path is not specified")
	}
	outPath := flag.Arg(1)
	if outPath == "" {
		log.Fatal("out path is not specified")
	}

	if err := gen.Generate(schemaPath, outPath, opts); err != nil {
		log.Fatal(err)
	}
}
