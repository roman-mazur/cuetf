package data

#aws_mskconnect_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_mskconnect_connector")
	arn?:         string
	description?: string
	id?:          string
	name!:        string
	tags?: [string]: string
	version?: string
}
