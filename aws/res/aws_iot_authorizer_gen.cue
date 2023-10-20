package res

#aws_iot_authorizer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iot_authorizer")
	arn?:                     string
	authorizer_function_arn:  string
	enable_caching_for_http?: bool
	id?:                      string
	name:                     string
	signing_disabled?:        bool
	status?:                  string
	token_key_name?:          string
	token_signing_public_keys?: [string]: string
}
