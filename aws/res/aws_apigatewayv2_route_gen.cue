package res

#aws_apigatewayv2_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apigatewayv2_route")
	close({
		api_id!:           string
		api_key_required?: bool
		authorization_scopes?: [...string]
		authorization_type?: string
		authorizer_id?:      string
		id?:                 string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		request_parameter?: matchN(1, [#request_parameter, [...#request_parameter]])
		model_selection_expression?: string
		operation_name?:             string
		request_models?: [string]: string
		route_key!:                           string
		route_response_selection_expression?: string
		target?:                              string
	})

	#request_parameter: close({
		request_parameter_key!: string
		required!:              bool
	})
}
