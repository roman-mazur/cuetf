package data

#aws_region: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_region")
	description?: string
	endpoint?:    string
	id?:          string
	name?:        string
}
