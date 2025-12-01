package res

#aws_cloudwatch_event_api_destination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudwatch_event_api_destination")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                           string
		connection_arn!:                   string
		description?:                      string
		http_method!:                      string
		id?:                               string
		invocation_endpoint!:              string
		invocation_rate_limit_per_second?: number
		name!:                             string
	})
}
