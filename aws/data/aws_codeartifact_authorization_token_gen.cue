package data

#aws_codeartifact_authorization_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_codeartifact_authorization_token")
	authorization_token?: string
	domain:               string
	domain_owner?:        string
	duration_seconds?:    number
	expiration?:          string
	id?:                  string
}
