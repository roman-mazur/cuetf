package data

#aws_memorydb_parameter_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_memorydb_parameter_group")
	arn?:         string
	description?: string
	family?:      string
	id?:          string
	name:         string
	parameter?: [...{
		name?:  string
		value?: string
	}]
	tags?: [string]: string
}