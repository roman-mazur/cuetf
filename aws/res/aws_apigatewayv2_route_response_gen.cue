package res

#aws_apigatewayv2_route_response: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_apigatewayv2_route_response")
	close({
		api_id!:                     string
		id?:                         string
		model_selection_expression?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		response_models?: [string]: string
		route_id!:           string
		route_response_key!: string
	})
}
