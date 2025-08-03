package res

#aws_apigatewayv2_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apigatewayv2_deployment")
	close({
		api_id!:        string
		auto_deployed?: bool
		description?:   string
		id?:            string
		region?:        string
		triggers?: [string]: string
	})
}
