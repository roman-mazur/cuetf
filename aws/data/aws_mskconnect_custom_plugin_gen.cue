package data

#aws_mskconnect_custom_plugin: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_mskconnect_custom_plugin")
	arn?:             string
	description?:     string
	id?:              string
	latest_revision?: number
	name!:            string
	state?:           string
	tags?: [string]: string
}
