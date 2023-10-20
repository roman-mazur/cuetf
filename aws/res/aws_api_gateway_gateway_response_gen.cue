package res

#aws_api_gateway_gateway_response: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_api_gateway_gateway_response")
	id?: string
	response_parameters?: [string]: string
	response_templates?: [string]: string
	response_type: string
	rest_api_id:   string
	status_code?:  string
}
