package res

#aws_chime_voice_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_chime_voice_connector")
	arn?:                string
	aws_region?:         string
	id?:                 string
	name!:               string
	outbound_host_name?: string
	require_encryption!: bool
	tags?: [string]: string
	tags_all?: [string]: string
}
