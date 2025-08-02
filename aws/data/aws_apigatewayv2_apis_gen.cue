package data

#aws_apigatewayv2_apis: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apigatewayv2_apis")
	close({
		id?: string
		ids?: [...string]
		name?:          string
		protocol_type?: string
		region?:        string
		tags?: [string]: string
	})
}
