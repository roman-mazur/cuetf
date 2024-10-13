package res

#aws_cognito_user_pool_client: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cognito_user_pool_client")
	access_token_validity?: number
	allowed_oauth_flows?: [...string]
	allowed_oauth_flows_user_pool_client?: bool
	allowed_oauth_scopes?: [...string]
	auth_session_validity?: number
	callback_urls?: [...string]
	client_secret?:                                 string
	default_redirect_uri?:                          string
	enable_propagate_additional_user_context_data?: bool
	enable_token_revocation?:                       bool
	explicit_auth_flows?: [...string]
	generate_secret?:   bool
	id?:                string
	id_token_validity?: number
	logout_urls?: [...string]
	name!:                          string
	prevent_user_existence_errors?: string
	read_attributes?: [...string]
	refresh_token_validity?: number
	supported_identity_providers?: [...string]
	user_pool_id!: string
	write_attributes?: [...string]
	analytics_configuration?: #analytics_configuration | [...#analytics_configuration]
	token_validity_units?: #token_validity_units | [...#token_validity_units]

	#analytics_configuration: {
		application_arn?:  string
		application_id?:   string
		external_id?:      string
		role_arn?:         string
		user_data_shared?: bool
	}

	#token_validity_units: {
		access_token?:  string
		id_token?:      string
		refresh_token?: string
	}
}
