package res

#aws_iot_logging_options: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iot_logging_options")
	close({
		default_log_level!: string
		disable_all_logs?:  bool
		id?:                string
		region?:            string
		role_arn!:          string
	})
}
