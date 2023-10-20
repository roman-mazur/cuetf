package data

#aws_cognito_user_pool_signing_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cognito_user_pool_signing_certificate")
	certificate?: string
	id?:          string
	user_pool_id: string
}
