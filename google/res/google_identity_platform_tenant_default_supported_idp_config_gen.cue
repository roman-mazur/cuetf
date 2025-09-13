package res

#google_identity_platform_tenant_default_supported_idp_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_identity_platform_tenant_default_supported_idp_config")
	close({
		// OAuth client ID
		client_id!: string

		// OAuth client secret
		client_secret!: string

		// If this IDP allows the user to sign in
		enabled?: bool
		id?:      string

		// ID of the IDP. Possible values include:
		//
		// * 'apple.com'
		//
		// * 'facebook.com'
		//
		// * 'gc.apple.com'
		//
		// * 'github.com'
		//
		// * 'google.com'
		//
		// * 'linkedin.com'
		//
		// * 'microsoft.com'
		//
		// * 'playgames.google.com'
		//
		// * 'twitter.com'
		//
		// * 'yahoo.com'
		idp_id!: string

		// The name of the default supported IDP config resource
		name?:     string
		project?:  string
		timeouts?: #timeouts

		// The name of the tenant where this DefaultSupportedIdpConfig
		// resource exists
		tenant!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
