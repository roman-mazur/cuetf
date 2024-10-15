package data

#aws_cognito_identity_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cognito_identity_pool")
	allow_classic_flow?:               bool
	allow_unauthenticated_identities?: bool
	arn?:                              string
	cognito_identity_providers?: [...{
		client_id?:               string
		provider_name?:           string
		server_side_token_check?: bool
	}]
	developer_provider_name?: string
	id?:                      string
	identity_pool_name!:      string
	openid_connect_provider_arns?: [...string]
	saml_provider_arns?: [...string]
	supported_login_providers?: [string]: string
	tags?: [string]:                      string
}
