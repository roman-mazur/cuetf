package res

#aws_cloudwatch_log_destination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudwatch_log_destination")
	arn?:      string
	id?:       string
	name!:     string
	role_arn!: string
	tags?: [string]: string
	tags_all?: [string]: string
	target_arn!: string
}
