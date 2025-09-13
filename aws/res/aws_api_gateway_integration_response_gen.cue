package res

#aws_api_gateway_integration_response: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_integration_response")
	close({
		content_handling?: string
		http_method!:      string
		id?:               string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		resource_id!: string
		response_parameters?: [string]: string
		response_templates?: [string]:  string
		rest_api_id!:       string
		selection_pattern?: string
		status_code!:       string
	})
}
