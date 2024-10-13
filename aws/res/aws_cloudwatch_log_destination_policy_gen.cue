package res

#aws_cloudwatch_log_destination_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudwatch_log_destination_policy")
	access_policy!:    string
	destination_name!: string
	force_update?:     bool
	id?:               string
}
