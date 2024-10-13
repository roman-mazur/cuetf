package data

#aws_apigatewayv2_api: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_apigatewayv2_api")
	api_endpoint?:                 string
	api_id!:                       string
	api_key_selection_expression?: string
	arn?:                          string
	cors_configuration?: [...{
		allow_credentials?: bool
		allow_headers?: [...string]
		allow_methods?: [...string]
		allow_origins?: [...string]
		expose_headers?: [...string]
		max_age?: number
	}]
	description?:                  string
	disable_execute_api_endpoint?: bool
	execution_arn?:                string
	id?:                           string
	name?:                         string
	protocol_type?:                string
	route_selection_expression?:   string
	tags?: [string]: string
	version?: string
}
