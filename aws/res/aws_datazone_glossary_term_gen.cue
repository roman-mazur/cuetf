package res

#aws_datazone_glossary_term: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datazone_glossary_term")
	close({
		created_at?:          string
		created_by?:          string
		domain_identifier?:   string
		glossary_identifier!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		term_relations?: matchN(1, [#term_relations, [...#term_relations]])
		long_description?:  string
		timeouts?:          #timeouts
		name!:              string
		short_description?: string
		status?:            string
	})

	#term_relations: close({
		classifies?: [...string]
		is_a?: [...string]
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string
	})
}
