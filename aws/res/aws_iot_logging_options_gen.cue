package res

#aws_iot_logging_options: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iot_logging_options")
	default_log_level!: string
	disable_all_logs?:  bool
	id?:                string
	role_arn!:          string
}
