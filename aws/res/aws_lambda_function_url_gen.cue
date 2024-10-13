package res

import "list"

#aws_lambda_function_url: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lambda_function_url")
	authorization_type!: string
	function_arn?:       string
	function_name!:      string
	function_url?:       string
	id?:                 string
	invoke_mode?:        string
	qualifier?:          string
	url_id?:             string
	cors?: #cors | list.MaxItems(1) & [...#cors]
	timeouts?: #timeouts

	#cors: {
		allow_credentials?: bool
		allow_headers?: [...string]
		allow_methods?: [...string]
		allow_origins?: [...string]
		expose_headers?: [...string]
		max_age?: number
	}

	#timeouts: create?: string
}
