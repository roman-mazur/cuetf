package res

#aws_lambda_invocation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lambda_invocation")
	close({
		function_name!:   string
		id?:              string
		input!:           string
		lifecycle_scope?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		qualifier?:     string
		result?:        string
		terraform_key?: string
		triggers?: [string]: string
	})
}
