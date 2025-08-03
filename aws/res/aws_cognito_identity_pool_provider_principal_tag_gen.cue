package res

#aws_cognito_identity_pool_provider_principal_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cognito_identity_pool_provider_principal_tag")
	close({
		id?:                     string
		identity_pool_id!:       string
		identity_provider_name!: string
		principal_tags?: [string]: string
		region?:       string
		use_defaults?: bool
	})
}
