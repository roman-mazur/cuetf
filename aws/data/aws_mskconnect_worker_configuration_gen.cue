package data

#aws_mskconnect_worker_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_mskconnect_worker_configuration")
	arn?:                     string
	description?:             string
	id?:                      string
	latest_revision?:         number
	name:                     string
	properties_file_content?: string
}
