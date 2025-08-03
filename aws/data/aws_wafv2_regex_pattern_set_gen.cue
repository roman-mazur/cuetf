package data

#aws_wafv2_regex_pattern_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_wafv2_regex_pattern_set")
	close({
		arn?:         string
		description?: string
		id?:          string
		name!:        string
		region?:      string
		regular_expression?: [...close({
			regex_string?: string
		})]
		scope!: string
	})
}
