package res

cloudflare_zero_trust_access_ai_controls_mcp_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_access_ai_controls_mcp_server")
	close({
		account_id!: string

		// Safe subset of auth_credentials surfaced to the dashboard. Includes auth_mode
		// (dcr|manual), has_client_secret, client_secret_version, and the OAuth
		// endpoints + client_id for manual servers. Never includes the secret value.
		auth_config_summary?: close({
			// Available values: "dcr", "manual".
			auth_mode?: string
			config?: close({
				authorization_endpoint?: string
				issuer?:                 string
				resource?:               string
				revocation_endpoint?:    string
				token_endpoint?:         string
			})
			client_secret_version?: number
			registration_info?: close({
				client_id?: string
				redirect_uris?: [...string]
				scope?:                      string
				token_endpoint_auth_method?: string
			})
			has_client_secret?: bool
		})

		// Static credential for the upstream MCP server. For auth_type "bearer", either
		// a raw token string (e.g. "sk-abc123"), which is wrapped server-side as
		// `Authorization: Bearer <token>`, or a JSON-encoded object of the form
		// `{"headers":{"Header-Name":"value",...}}` for custom or multiple static
		// headers (e.g. Cloudflare Access service tokens:
		// `{"headers":{"cf-access-client-id":"...","cf-access-client-secret":"..."}}`).
		auth_credentials?: string

		// Authentication method used to connect to the upstream MCP server.
		// Available values: "oauth", "bearer", "unauthenticated".
		auth_type!: string

		// Whether administrative authentication is required before capabilities can be
		// synced. Manual OAuth is user-managed and has no administrative
		// authentication flow.
		// Available values: "not_required", "required", "connected", "stale", "manual".
		authentication_status?: string

		// Pre-registered OAuth client_secret. Write-only - accepted on create/update
		// when auth_credentials.auth_mode is 'manual'. Stored AES-GCM-encrypted in
		// server_oauth_secrets; never returned by read endpoints.
		client_secret?: string
		created_at?:    string
		created_by?:    string

		// Optional description of the MCP server.
		description?: string
		error?:       string
		error_details?: close({
			// Underlying error message
			cause?: string

			// True = MCP server returned an error. False = couldn't reach the server
			is_upstream?: bool

			// MCP protocol error code
			mcp_code?: number

			// Whether the error is transient and worth retrying
			retryable?: bool

			// HTTP status code from the server
			status_code?: number
		})

		// URL of the upstream MCP endpoint.
		hostname!: string

		// Unique identifier for the MCP server.
		id!: string

		// When true, the gateway worker uses the shared Cloudflare-owned OAuth callback
		// endpoint as the redirect_uri for upstream on-behalf OAuth, instead of the
		// customer portal hostname. Defaults to false (off); opt in per server by
		// setting true.
		is_shared_oauth_callback_enabled?: bool
		last_successful_sync?:             string
		last_synced?:                      string
		modified_at?:                      string
		modified_by?:                      string

		// Display name for the MCP server.
		name!: string
		prompts?: [...{
			[string]: string
		}]

		// Route outbound traffic to this MCP server through Zero Trust Secure Web Gateway.
		secure_web_gateway?: bool
		status?:             string
		tools?: [...{
			[string]: string
		}]

		// Server-wide prompt capability overrides.
		updated_prompts?: matchN(1, [close({
			// Custom name exposed for the capability.
			alias?: string

			// Custom description exposed for the capability.
			description?: string

			// Whether the capability is available through the MCP server.
			enabled?: bool

			// Name of the tool or prompt capability to override.
			name!: string
		}), [...close({
			// Custom name exposed for the capability.
			alias?: string

			// Custom description exposed for the capability.
			description?: string

			// Whether the capability is available through the MCP server.
			enabled?: bool

			// Name of the tool or prompt capability to override.
			name!: string
		})]])

		// Server-wide tool capability overrides.
		updated_tools?: matchN(1, [close({
			// Custom name exposed for the capability.
			alias?: string

			// Custom description exposed for the capability.
			description?: string

			// Whether the capability is available through the MCP server.
			enabled?: bool

			// Name of the tool or prompt capability to override.
			name!: string
		}), [...close({
			// Custom name exposed for the capability.
			alias?: string

			// Custom description exposed for the capability.
			description?: string

			// Whether the capability is available through the MCP server.
			enabled?: bool

			// Name of the tool or prompt capability to override.
			name!: string
		})]])
	})
}
