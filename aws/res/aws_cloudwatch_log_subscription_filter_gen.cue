package res

#aws_cloudwatch_log_subscription_filter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudwatch_log_subscription_filter")
	destination_arn: string
	distribution?:   string
	filter_pattern:  string
	id?:             string
	log_group_name:  string
	name:            string
	role_arn?:       string
}
