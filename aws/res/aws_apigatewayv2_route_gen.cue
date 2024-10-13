package res

#aws_apigatewayv2_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_apigatewayv2_route")
	api_id!:           string
	api_key_required?: bool
	authorization_scopes?: [...string]
	authorization_type?:         string
	authorizer_id?:              string
	id?:                         string
	model_selection_expression?: string
	operation_name?:             string
	request_models?: [string]: string
	route_key!:                           string
	route_response_selection_expression?: string
	target?:                              string
	request_parameter?: #request_parameter | [...#request_parameter]

	#request_parameter: {
		request_parameter_key!: string
		required!:              bool
	}
}
