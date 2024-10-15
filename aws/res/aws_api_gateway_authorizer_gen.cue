package res

#aws_api_gateway_authorizer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_authorizer")
	arn?:                              string
	authorizer_credentials?:           string
	authorizer_result_ttl_in_seconds?: number
	authorizer_uri?:                   string
	id?:                               string
	identity_source?:                  string
	identity_validation_expression?:   string
	name!:                             string
	provider_arns?: [...string]
	rest_api_id!: string
	type?:        string
}
