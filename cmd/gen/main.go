// Command gen can be used to generate the CUE definitions from a Terraform provider schema.
//
//	gen provider-schema.json output/dir
package main

import (
	"flag"
	"log"

	"rmazur.io/cuetf/internal/gen"
)

var (
	filter   = flag.String("f", "", "Definition name filter (regexp)")
	verbose  = flag.Bool("v", false, "Verbose mode")
	logTime  = flag.Bool("t", false, "Log time")
	defs     = flag.Bool("defs", true, "Whether to regenerate all the defs")
	mappings = flag.Bool("mappings", true, "Whether to regenerate the mappings")
)

func main() {
	flag.Parse()
	if !*logTime {
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

	if err := gen.Generate(schemaPath, outPath, *defs, *mappings, *filter, *logTime, *verbose); err != nil {
		log.Fatal(err)
	}
}
