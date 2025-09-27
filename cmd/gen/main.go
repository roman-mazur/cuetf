// Command gen can be used to generate the CUE definitions from a Terraform provider schema.
//
//	gen provider-schema.json output/dir
package main

import (
	"flag"
	"log"
	"regexp"

	"rmazur.io/cuetf/internal/gen"
)

var (
	filter   = flag.String("f", "", "Definition name filter (regexp, what to include)")
	exclude  = flag.String("e", "", "Exclusion name filter (regexp, what to exclude)")
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
	cfg := &gen.Config{
		SchemaPath:       flag.Arg(0),
		OutputPath:       flag.Arg(1),
		GenerateDefs:     *defs,
		GenerateMappings: *mappings,
		Verbose:          *verbose,
		LogTime:          *logTime,
	}

	if *filter != "" {
		cfg.IncludeFilter = regexp.MustCompile(*filter)
	}
	if *exclude != "" {
		cfg.ExcludeFilter = regexp.MustCompile(*exclude)
	}

	if cfg.SchemaPath == "" {
		log.Fatal("schema path is not specified")
	}
	if cfg.OutputPath == "" {
		log.Fatal("out path is not specified")
	}

	if err := gen.Generate(cfg); err != nil {
		log.Fatal(err)
	}
}
