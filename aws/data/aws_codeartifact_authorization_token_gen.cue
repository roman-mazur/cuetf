package data

#aws_codeartifact_authorization_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codeartifact_authorization_token")
	close({
		authorization_token?: string
		domain!:              string
		domain_owner?:        string
		duration_seconds?:    number
		expiration?:          string
		id?:                  string
		region?:              string
	})
}
