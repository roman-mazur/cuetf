package res

#aws_config_configuration_recorder_status: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_config_configuration_recorder_status")
	id?:         string
	is_enabled!: bool
	name!:       string
}
