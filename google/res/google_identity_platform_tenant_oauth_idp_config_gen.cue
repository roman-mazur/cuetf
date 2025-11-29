package res

#google_identity_platform_tenant_oauth_idp_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_identity_platform_tenant_oauth_idp_config")
	close({
		// The client id of an OAuth client.
		client_id!: string

		// The client secret of the OAuth client, to enable OIDC code
		// flow.
		client_secret?: string

		// Human friendly display name.
		display_name!: string

		// If this config allows users to sign in with the provider.
		enabled?: bool
		id?:      string

		// For OIDC Idps, the issuer identifier.
		issuer!: string

		// The name of the OauthIdpConfig. Must start with 'oidc.'.
		name!:     string
		timeouts?: #timeouts
		project?:  string

		// The name of the tenant where this OIDC IDP configuration
		// resource exists
		tenant!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
