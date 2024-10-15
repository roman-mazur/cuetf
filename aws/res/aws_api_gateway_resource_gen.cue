package res

#aws_api_gateway_resource: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_resource")
	id?:          string
	parent_id!:   string
	path?:        string
	path_part!:   string
	rest_api_id!: string
}
