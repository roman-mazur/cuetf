package res

#aws_directory_service_log_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_directory_service_log_subscription")
	close({
		directory_id!:   string
		id?:             string
		log_group_name!: string
		region?:         string
	})
}
