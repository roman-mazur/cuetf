package res

#aws_directory_service_log_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_directory_service_log_subscription")
	directory_id!:   string
	id?:             string
	log_group_name!: string
}
