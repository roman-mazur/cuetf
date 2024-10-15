package res

#cloudflare_access_identity_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_access_identity_provider")
	account_id?: string
	id?:         string
	name!:       string
	type!:       string
	zone_id?:    string
	config?: #config | [...#config]
	scim_config?: #scim_config | [...#scim_config]

	#config: {
		api_token?:   string
		apps_domain?: string
		attributes?: [...string]
		auth_url?:                string
		authorization_server_id?: string
		centrify_account?:        string
		centrify_app_id?:         string
		certs_url?:               string
		claims?: [...string]
		client_id?:                  string
		client_secret?:              string
		conditional_access_enabled?: bool
		directory_id?:               string
		email_attribute_name?:       string
		email_claim_name?:           string
		idp_public_cert?:            string
		issuer_url?:                 string
		okta_account?:               string
		onelogin_account?:           string
		ping_env_id?:                string
		pkce_enabled?:               bool
		redirect_url?:               string
		scopes?: [...string]
		sign_request?:   bool
		sso_target_url?: string
		support_groups?: bool
		token_url?:      string
	}

	#scim_config: {
		enabled?:                  bool
		group_member_deprovision?: bool
		seat_deprovision?:         bool
		secret?:                   string
		user_deprovision?:         bool
	}
}
