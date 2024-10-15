package data

#aws_shield_protection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_shield_protection")
	id?:             string
	name?:           string
	protection_arn?: string
	protection_id?:  string
	resource_arn?:   string
}
