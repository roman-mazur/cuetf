package res

#aws_apigatewayv2_integration_response: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apigatewayv2_integration_response")
	close({
		api_id!:                    string
		content_handling_strategy?: string
		id?:                        string
		integration_id!:            string
		integration_response_key!:  string
		region?:                    string
		response_templates?: [string]: string
		template_selection_expression?: string
	})
}
