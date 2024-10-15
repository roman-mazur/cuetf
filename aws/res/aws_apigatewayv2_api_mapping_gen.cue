package res

#aws_apigatewayv2_api_mapping: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apigatewayv2_api_mapping")
	api_id!:          string
	api_mapping_key?: string
	domain_name!:     string
	id?:              string
	stage!:           string
}
