package res

#aws_cognito_identity_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cognito_identity_pool")
	close({
		allow_classic_flow?:               bool
		allow_unauthenticated_identities?: bool
		arn?:                              string
		developer_provider_name?:          string
		id?:                               string
		identity_pool_name!:               string
		cognito_identity_providers?: matchN(1, [#cognito_identity_providers, [...#cognito_identity_providers]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		openid_connect_provider_arns?: [...string]
		saml_provider_arns?: [...string]
		supported_login_providers?: [string]: string
		tags?: [string]:                      string
		tags_all?: [string]:                  string
	})

	#cognito_identity_providers: close({
		client_id?:               string
		provider_name?:           string
		server_side_token_check?: bool
	})
}
