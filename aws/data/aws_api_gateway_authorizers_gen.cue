package data

#aws_api_gateway_authorizers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_api_gateway_authorizers")
	id?: string
	ids?: [...string]
	rest_api_id!: string
}
