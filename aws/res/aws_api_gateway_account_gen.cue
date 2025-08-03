package res

#aws_api_gateway_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_account")
	close({
		api_key_version?:     string
		cloudwatch_role_arn?: string
		features?: [...string]
		region?: string
		throttle_settings?: [...close({
			burst_limit?: number
			rate_limit?:  number
		})]
	})
}
