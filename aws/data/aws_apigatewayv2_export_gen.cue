package data

#aws_apigatewayv2_export: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apigatewayv2_export")
	close({
		api_id!:         string
		body?:           string
		export_version?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		id?:                 string
		include_extensions?: bool
		output_type!:        string
		specification!:      string
		stage_name?:         string
	})
}
