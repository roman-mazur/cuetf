package data

#aws_cognito_user_pool_signing_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cognito_user_pool_signing_certificate")
	close({
		certificate?:  string
		id?:           string
		region?:       string
		user_pool_id!: string
	})
}
