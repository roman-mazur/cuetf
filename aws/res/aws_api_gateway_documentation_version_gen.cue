package res

#aws_api_gateway_documentation_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_documentation_version")
	description?: string
	id?:          string
	rest_api_id!: string
	version!:     string
}
