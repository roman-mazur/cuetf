package data

#aws_api_gateway_authorizer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_authorizer")
	close({
		arn?:                              string
		authorizer_credentials?:           string
		authorizer_id!:                    string
		authorizer_result_ttl_in_seconds?: number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                         string
		authorizer_uri?:                 string
		id?:                             string
		identity_source?:                string
		identity_validation_expression?: string
		name?:                           string
		provider_arns?: [...string]
		rest_api_id!: string
		type?:        string
	})
}
