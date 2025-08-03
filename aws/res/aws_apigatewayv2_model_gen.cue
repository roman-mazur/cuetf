package res

#aws_apigatewayv2_model: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apigatewayv2_model")
	close({
		api_id!:       string
		content_type!: string
		description?:  string
		id?:           string
		name!:         string
		region?:       string
		schema!:       string
	})
}
