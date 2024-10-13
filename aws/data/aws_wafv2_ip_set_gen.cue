package data

#aws_wafv2_ip_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_wafv2_ip_set")
	addresses?: [...string]
	arn?:                string
	description?:        string
	id?:                 string
	ip_address_version?: string
	name!:               string
	scope!:              string
}
