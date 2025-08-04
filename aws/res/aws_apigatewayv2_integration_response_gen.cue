package res

#aws_apigatewayv2_integration_response: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apigatewayv2_integration_response")
	close({
		api_id!:                    string
		content_handling_strategy?: string
		id?:                        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		integration_id!:           string
		integration_response_key!: string
		response_templates?: [string]: string
		template_selection_expression?: string
	})
}
