package res

#aws_api_gateway_model: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_api_gateway_model")
	content_type!: string
	description?:  string
	id?:           string
	name!:         string
	rest_api_id!:  string
	schema?:       string
}
