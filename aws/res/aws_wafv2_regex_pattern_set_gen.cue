package res

import "list"

#aws_wafv2_regex_pattern_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_wafv2_regex_pattern_set")
	close({
		arn?: string
		regular_expression?: matchN(1, [#regular_expression, list.MaxItems(10) & [...#regular_expression]])
		description?: string
		id?:          string
		lock_token?:  string
		name?:        string
		name_prefix?: string
		region?:      string
		scope!:       string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#regular_expression: close({
		regex_string!: string
	})
}
