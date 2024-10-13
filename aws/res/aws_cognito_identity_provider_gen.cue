package res

#aws_cognito_identity_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cognito_identity_provider")
	attribute_mapping?: [string]: string
	id?: string
	idp_identifiers?: [...string]
	provider_details!: [string]: string
	provider_name!: string
	provider_type!: string
	user_pool_id!:  string
}
