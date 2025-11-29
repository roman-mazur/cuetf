package res

#google_identity_platform_default_supported_idp_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_identity_platform_default_supported_idp_config")
	close({
		// OAuth client ID
		client_id!: string

		// OAuth client secret
		client_secret!: string

		// If this IDP allows the user to sign in
		enabled?:  bool
		timeouts?: #timeouts

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
		id?:     string

		// The name of the DefaultSupportedIdpConfig resource
		name?:    string
		project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
