package res

#aws_cognito_managed_user_pool_client: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cognito_managed_user_pool_client")
	close({
		access_token_validity?: number
		allowed_oauth_flows?: [...string]
		allowed_oauth_flows_user_pool_client?: bool
		allowed_oauth_scopes?: [...string]
		auth_session_validity?: number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		callback_urls?: [...string]
		client_secret?:                                 string
		default_redirect_uri?:                          string
		enable_propagate_additional_user_context_data?: bool
		enable_token_revocation?:                       bool
		explicit_auth_flows?: [...string]
		id?: string
		analytics_configuration?: matchN(1, [#analytics_configuration, [...#analytics_configuration]])
		refresh_token_rotation?: matchN(1, [#refresh_token_rotation, [...#refresh_token_rotation]])
		id_token_validity?: number
		logout_urls?: [...string]
		name?:                          string
		name_pattern?:                  string
		name_prefix?:                   string
		prevent_user_existence_errors?: string
		read_attributes?: [...string]
		refresh_token_validity?: number
		supported_identity_providers?: [...string]
		user_pool_id!: string
		write_attributes?: [...string]
		token_validity_units?: matchN(1, [#token_validity_units, [...#token_validity_units]])
	})

	#analytics_configuration: close({
		application_arn?:  string
		application_id?:   string
		external_id?:      string
		role_arn?:         string
		user_data_shared?: bool
	})

	#refresh_token_rotation: close({
		feature!:                    string
		retry_grace_period_seconds?: number
	})

	#token_validity_units: close({
		access_token?:  string
		id_token?:      string
		refresh_token?: string
	})
}
