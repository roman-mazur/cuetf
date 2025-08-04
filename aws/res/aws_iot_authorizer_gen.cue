package res

#aws_iot_authorizer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iot_authorizer")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		arn?:                     string
		authorizer_function_arn!: string
		enable_caching_for_http?: bool
		id?:                      string
		name!:                    string
		signing_disabled?:        bool
		status?:                  string
		tags?: [string]:     string
		tags_all?: [string]: string
		token_key_name?: string
		token_signing_public_keys?: [string]: string
	})
}
