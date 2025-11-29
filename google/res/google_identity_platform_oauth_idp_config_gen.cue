package res

import "list"

#google_identity_platform_oauth_idp_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_identity_platform_oauth_idp_config")
	close({
		// The client id of an OAuth client.
		client_id!: string

		// The client secret of the OAuth client, to enable OIDC code
		// flow.
		client_secret?: string

		// Human friendly display name.
		display_name?: string

		// If this config allows users to sign in with the provider.
		enabled?: bool
		id?:      string
		response_type?: matchN(1, [#response_type, list.MaxItems(1) & [...#response_type]])

		// For OIDC Idps, the issuer identifier.
		issuer!: string

		// The name of the OauthIdpConfig. Must start with 'oidc.'.
		name!:     string
		timeouts?: #timeouts
		project?:  string
	})

	#response_type: close({
		// If true, authorization code is returned from IdP's
		// authorization endpoint.
		code?: bool

		// If true, ID token is returned from IdP's authorization
		// endpoint.
		id_token?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
