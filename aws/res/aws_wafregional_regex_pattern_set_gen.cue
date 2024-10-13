package res

#aws_wafregional_regex_pattern_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_wafregional_regex_pattern_set")
	id?:   string
	name!: string
	regex_pattern_strings?: [...string]
}
