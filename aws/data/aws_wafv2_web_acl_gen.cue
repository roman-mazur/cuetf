package data

#aws_wafv2_web_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_wafv2_web_acl")
	arn?:         string
	description?: string
	id?:          string
	name!:        string
	scope!:       string
}
