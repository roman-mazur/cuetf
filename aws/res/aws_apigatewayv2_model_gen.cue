package res

#aws_apigatewayv2_model: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_apigatewayv2_model")
	api_id!:       string
	content_type!: string
	description?:  string
	id?:           string
	name!:         string
	schema!:       string
}
