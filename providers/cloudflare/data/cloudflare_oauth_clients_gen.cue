package data

#cloudflare_oauth_clients: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_oauth_clients")
	close({
		// Account identifier tag.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Array of allowed CORS origins.
			allowed_cors_origins?: [...string]

			// The unique identifier for an OAuth client.
			client_id?: string

			// Human-readable name of the OAuth client.
			client_name?: string

			// URL of the home page of the client.
			client_uri?: string

			// Timestamp when the OAuth client was created.
			created_at?: string

			// Array of OAuth grant types the client is allowed to use.
			// `authorization_code` is required; `refresh_token` may be
			// included optionally.
			grant_types?: [...string]

			// Indicates whether the client has a rotated secret that has not
			// yet been deleted.
			has_rotated_secret?: bool

			// URL of the client's logo.
			logo_uri?: string

			// URL that points to a privacy policy document.
			policy_uri?: string

			// Array of allowed post-logout redirect URIs.
			post_logout_redirect_uris?: [...string]

			// Timestamp when the OAuth client was promoted to public
			// visibility.
			promoted_at?: string

			// Array of allowed redirect URIs for the client.
			redirect_uris?: [...string]

			// Array of OAuth response types the client is allowed to use.
			response_types?: [...string]

			// Array of OAuth scopes the client is allowed to request.
			// Colon-delimited scopes are not accepted. Dot-delimited scopes
			// are validated against available OAuth API scopes; simple
			// identity scopes are allowed. Protocol scopes `offline_access`
			// and `openid` are added or removed automatically based on
			// `grant_types` and `response_types`.
			scopes?: [...string]

			// The authentication method the client uses at the token
			// endpoint.
			// Available values: "none", "client_secret_basic",
			// "client_secret_post".
			token_endpoint_auth_method?: string

			// URL that points to a terms of service document.
			tos_uri?: string

			// Timestamp when the OAuth client was last updated.
			updated_at?: string

			// Visibility of the OAuth client.
			// Available values: "public", "private".
			visibility?: string

			// Client URI domain control verification state.
			client_uri_verification?: close({
				// Current verification status for the client URI host.
				// Available values: "pending", "in_progress", "verified",
				// "failed".
				status?: string

				// Exact TXT record value that must be added to DNS to prove
				// ownership of the client URI host.
				text?: string
			})
		}), [...close({
			// Array of allowed CORS origins.
			allowed_cors_origins?: [...string]

			// The unique identifier for an OAuth client.
			client_id?: string

			// Human-readable name of the OAuth client.
			client_name?: string

			// URL of the home page of the client.
			client_uri?: string

			// Timestamp when the OAuth client was created.
			created_at?: string

			// Array of OAuth grant types the client is allowed to use.
			// `authorization_code` is required; `refresh_token` may be
			// included optionally.
			grant_types?: [...string]

			// Indicates whether the client has a rotated secret that has not
			// yet been deleted.
			has_rotated_secret?: bool

			// URL of the client's logo.
			logo_uri?: string

			// URL that points to a privacy policy document.
			policy_uri?: string

			// Array of allowed post-logout redirect URIs.
			post_logout_redirect_uris?: [...string]

			// Timestamp when the OAuth client was promoted to public
			// visibility.
			promoted_at?: string

			// Array of allowed redirect URIs for the client.
			redirect_uris?: [...string]

			// Array of OAuth response types the client is allowed to use.
			response_types?: [...string]

			// Array of OAuth scopes the client is allowed to request.
			// Colon-delimited scopes are not accepted. Dot-delimited scopes
			// are validated against available OAuth API scopes; simple
			// identity scopes are allowed. Protocol scopes `offline_access`
			// and `openid` are added or removed automatically based on
			// `grant_types` and `response_types`.
			scopes?: [...string]

			// The authentication method the client uses at the token
			// endpoint.
			// Available values: "none", "client_secret_basic",
			// "client_secret_post".
			token_endpoint_auth_method?: string

			// URL that points to a terms of service document.
			tos_uri?: string

			// Timestamp when the OAuth client was last updated.
			updated_at?: string

			// Visibility of the OAuth client.
			// Available values: "public", "private".
			visibility?: string

			// Client URI domain control verification state.
			client_uri_verification?: close({
				// Current verification status for the client URI host.
				// Available values: "pending", "in_progress", "verified",
				// "failed".
				status?: string

				// Exact TXT record value that must be added to DNS to prove
				// ownership of the client URI host.
				text?: string
			})
		})]])
	})
}
