package res

import "list"

#aws_wafv2_regex_pattern_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_wafv2_regex_pattern_set")
	arn?:         string
	description?: string
	id?:          string
	lock_token?:  string
	name:         string
	scope:        string
	tags?: [string]: string
	tags_all?: [string]: string
	regular_expression?: #regular_expression | list.MaxItems(10) & [...#regular_expression]

	#regular_expression: regex_string: string
}
