package res

#aws_cloudwatch_log_delivery_destination_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_log_delivery_destination_policy")
	close({
		delivery_destination_name!:   string
		delivery_destination_policy!: string
		region?:                      string
	})
}
