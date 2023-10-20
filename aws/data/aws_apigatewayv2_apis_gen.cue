package data

#aws_apigatewayv2_apis: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_apigatewayv2_apis")
	id?: string
	ids?: [...string]
	name?:          string
	protocol_type?: string
	tags?: [string]: string
}
