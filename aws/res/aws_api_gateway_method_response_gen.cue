package res

#aws_api_gateway_method_response: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_api_gateway_method_response")
	http_method!: string
	id?:          string
	resource_id!: string
	response_models?: [string]: string
	response_parameters?: [string]: bool
	rest_api_id!: string
	status_code!: string
}
