package res

#aws_api_gateway_request_validator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_request_validator")
	close({
		id?:                          string
		name!:                        string
		region?:                      string
		rest_api_id!:                 string
		validate_request_body?:       bool
		validate_request_parameters?: bool
	})
}
