package data

#aws_wafv2_rule_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_wafv2_rule_group")
	arn?:         string
	description?: string
	id?:          string
	name:         string
	scope:        string
}