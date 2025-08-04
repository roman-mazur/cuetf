package data

#aws_lambda_function_url: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lambda_function_url")
	close({
		authorization_type?: string
		cors?: [...close({
			allow_credentials?: bool
			allow_headers?: [...string]
			allow_methods?: [...string]
			allow_origins?: [...string]
			expose_headers?: [...string]
			max_age?: number
		})]
		creation_time?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		function_arn?:       string
		function_name!:      string
		function_url?:       string
		id?:                 string
		invoke_mode?:        string
		last_modified_time?: string
		qualifier?:          string
		url_id?:             string
	})
}
