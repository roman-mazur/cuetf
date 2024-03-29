package res

#aws_cloudwatch_event_api_destination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudwatch_event_api_destination")
	arn?:                              string
	connection_arn:                    string
	description?:                      string
	http_method:                       string
	id?:                               string
	invocation_endpoint:               string
	invocation_rate_limit_per_second?: number
	name:                              string
}
