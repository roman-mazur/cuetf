package res

#aws_api_gateway_rest_api_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_rest_api_policy")
	id?:          string
	policy!:      string
	rest_api_id!: string
}
