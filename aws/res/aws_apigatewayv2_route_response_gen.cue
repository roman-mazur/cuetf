package res

#aws_apigatewayv2_route_response: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_apigatewayv2_route_response")
	api_id!:                     string
	id?:                         string
	model_selection_expression?: string
	response_models?: [string]: string
	route_id!:           string
	route_response_key!: string
}
