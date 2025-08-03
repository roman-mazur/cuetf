package res

#aws_api_gateway_model: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_model")
	close({
		content_type!: string
		description?:  string
		id?:           string
		name!:         string
		region?:       string
		rest_api_id!:  string
		schema?:       string
	})
}
