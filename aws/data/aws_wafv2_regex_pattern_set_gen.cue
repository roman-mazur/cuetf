package data

#aws_wafv2_regex_pattern_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_wafv2_regex_pattern_set")
	arn?:         string
	description?: string
	id?:          string
	name:         string
	regular_expression?: [...{
		regex_string?: string
	}]
	scope: string
}
