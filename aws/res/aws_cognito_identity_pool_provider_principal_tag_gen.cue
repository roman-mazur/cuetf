package res

#aws_cognito_identity_pool_provider_principal_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cognito_identity_pool_provider_principal_tag")
	id?:                    string
	identity_pool_id:       string
	identity_provider_name: string
	principal_tags?: [string]: string
	use_defaults?: bool
}
