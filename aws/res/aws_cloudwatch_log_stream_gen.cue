package res

#aws_cloudwatch_log_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudwatch_log_stream")
	arn?:            string
	id?:             string
	log_group_name!: string
	name!:           string
}
