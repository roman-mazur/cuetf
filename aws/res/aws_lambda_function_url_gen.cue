package res

import "list"

#aws_lambda_function_url: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_lambda_function_url")
	close({
		authorization_type!: string
		function_arn?:       string
		function_name!:      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		function_url?: string
		id?:           string
		invoke_mode?:  string
		qualifier?:    string
		cors?: matchN(1, [#cors, list.MaxItems(1) & [...#cors]])
		timeouts?: #timeouts
		url_id?:   string
	})

	#cors: close({
		allow_credentials?: bool
		allow_headers?: [...string]
		allow_methods?: [...string]
		allow_origins?: [...string]
		expose_headers?: [...string]
		max_age?: number
	})

	#timeouts: close({
		create?: string
	})
}
