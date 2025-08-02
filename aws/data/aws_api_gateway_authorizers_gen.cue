package data

#aws_api_gateway_authorizers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_authorizers")
	close({
		id?: string
		ids?: [...string]
		region?:      string
		rest_api_id!: string
	})
}
