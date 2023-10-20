package res

#aws_api_gateway_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_api_gateway_account")
	api_key_version?:     string
	cloudwatch_role_arn?: string
	features?: [...string]
	id?: string
	throttle_settings?: [...{
		burst_limit?: number
		rate_limit?:  number
	}]
}
