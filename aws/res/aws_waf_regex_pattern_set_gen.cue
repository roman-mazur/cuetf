package res

#aws_waf_regex_pattern_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_waf_regex_pattern_set")
	arn?:  string
	id?:   string
	name!: string
	regex_pattern_strings?: [...string]
}
