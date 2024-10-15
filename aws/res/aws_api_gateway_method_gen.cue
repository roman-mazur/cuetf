package res

#aws_api_gateway_method: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_method")
	api_key_required?: bool
	authorization!:    string
	authorization_scopes?: [...string]
	authorizer_id?:  string
	http_method!:    string
	id?:             string
	operation_name?: string
	request_models?: [string]:     string
	request_parameters?: [string]: bool
	request_validator_id?: string
	resource_id!:          string
	rest_api_id!:          string
}
