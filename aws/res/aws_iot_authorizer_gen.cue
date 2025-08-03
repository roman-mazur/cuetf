package res

#aws_iot_authorizer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iot_authorizer")
	close({
		arn?:                     string
		authorizer_function_arn!: string
		enable_caching_for_http?: bool
		id?:                      string
		name!:                    string
		region?:                  string
		signing_disabled?:        bool
		status?:                  string
		tags?: [string]:     string
		tags_all?: [string]: string
		token_key_name?: string
		token_signing_public_keys?: [string]: string
	})
}
