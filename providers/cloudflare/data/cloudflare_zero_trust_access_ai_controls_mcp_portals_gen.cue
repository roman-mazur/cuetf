package data

cloudflare_zero_trust_access_ai_controls_mcp_portals: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_access_ai_controls_mcp_portals")
	close({
		account_id?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Code Mode policy for this portal. `off`: Code Mode is unavailable; query
			// parameters are ignored. `opt_in`: Code Mode is off by default; clients turn
			// it on with `?codemode=search_and_execute`. `default_on`: Code Mode is on by
			// default; clients can opt out with `?codemode=off`. `enforced`: Code Mode is
			// always on; query parameters are ignored. Defaults to `opt_in` when omitted
			// on create. If both `code_mode` and `allow_code_mode` are sent, they must be
			// consistent or the request returns a 400.
			// Available values: "off", "opt_in", "default_on", "enforced".
			code_mode?: string
			servers?: matchN(1, [close({
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

				// Authentication method used to connect to the upstream MCP server.
				// Available values: "oauth", "bearer", "unauthenticated".
				auth_type?:        string
				default_disabled?: bool
				error?:            string
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

				// Whether administrative authentication is required before capabilities can be
				// synced. Manual OAuth is user-managed and has no administrative
				// authentication flow.
				// Available values: "not_required", "required", "connected", "stale", "manual".
				authentication_status?: string

				// URL of the upstream MCP endpoint.
				hostname?: string

				// Unique identifier for the MCP server.
				id?: string

				// When true, the gateway worker uses the shared Cloudflare-owned OAuth callback
				// endpoint as the redirect_uri for upstream on-behalf OAuth, instead of the
				// customer portal hostname. New public server creates default to true;
				// existing servers default to false from migration until explicitly updated.
				// Effective behavior is gated by the gateway worker's per-env rollout mode KV
				// key.
				is_shared_oauth_callback_enabled?: bool
				last_successful_sync?:             string
				last_synced?:                      string
				modified_at?:                      string
				modified_by?:                      string

				// Display name for the MCP server.
				name?:      string
				on_behalf?: bool
				prompts?: [...{
					[string]: string
				}]

				// Route outbound traffic to this MCP server through Zero Trust Secure Web Gateway.
				secure_web_gateway?: bool

				// Unique identifier for the MCP server.
				server_id?: string

				// Current sync state of the server
				// Available values: "waiting", "ready", "stale", "error".
				status?: string
				tools?: [...{
					[string]: string
				}]
				updated_prompts?: matchN(1, [close({
					enabled?:            bool
					name?:               string
					portal_alias?:       string
					portal_description?: string
					server_alias?:       string
					server_description?: string
				}), [...close({
					enabled?:            bool
					name?:               string
					portal_alias?:       string
					portal_description?: string
					server_alias?:       string
					server_description?: string
				})]])
				created_at?: string
				updated_tools?: matchN(1, [close({
					enabled?:            bool
					name?:               string
					portal_alias?:       string
					portal_description?: string
					server_alias?:       string
					server_description?: string
				}), [...close({
					enabled?:            bool
					name?:               string
					portal_alias?:       string
					portal_description?: string
					server_alias?:       string
					server_description?: string
				})]])

				// Optional description of the MCP server.
				description?: string
				created_by?:  string
			}), [...close({
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

				// Authentication method used to connect to the upstream MCP server.
				// Available values: "oauth", "bearer", "unauthenticated".
				auth_type?:        string
				default_disabled?: bool
				error?:            string
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

				// Whether administrative authentication is required before capabilities can be
				// synced. Manual OAuth is user-managed and has no administrative
				// authentication flow.
				// Available values: "not_required", "required", "connected", "stale", "manual".
				authentication_status?: string

				// URL of the upstream MCP endpoint.
				hostname?: string

				// Unique identifier for the MCP server.
				id?: string

				// When true, the gateway worker uses the shared Cloudflare-owned OAuth callback
				// endpoint as the redirect_uri for upstream on-behalf OAuth, instead of the
				// customer portal hostname. New public server creates default to true;
				// existing servers default to false from migration until explicitly updated.
				// Effective behavior is gated by the gateway worker's per-env rollout mode KV
				// key.
				is_shared_oauth_callback_enabled?: bool
				last_successful_sync?:             string
				last_synced?:                      string
				modified_at?:                      string
				modified_by?:                      string

				// Display name for the MCP server.
				name?:      string
				on_behalf?: bool
				prompts?: [...{
					[string]: string
				}]

				// Route outbound traffic to this MCP server through Zero Trust Secure Web Gateway.
				secure_web_gateway?: bool

				// Unique identifier for the MCP server.
				server_id?: string

				// Current sync state of the server
				// Available values: "waiting", "ready", "stale", "error".
				status?: string
				tools?: [...{
					[string]: string
				}]
				updated_prompts?: matchN(1, [close({
					enabled?:            bool
					name?:               string
					portal_alias?:       string
					portal_description?: string
					server_alias?:       string
					server_description?: string
				}), [...close({
					enabled?:            bool
					name?:               string
					portal_alias?:       string
					portal_description?: string
					server_alias?:       string
					server_description?: string
				})]])
				created_at?: string
				updated_tools?: matchN(1, [close({
					enabled?:            bool
					name?:               string
					portal_alias?:       string
					portal_description?: string
					server_alias?:       string
					server_description?: string
				}), [...close({
					enabled?:            bool
					name?:               string
					portal_alias?:       string
					portal_description?: string
					server_alias?:       string
					server_description?: string
				})]])

				// Optional description of the MCP server.
				description?: string
				created_by?:  string
			})]])
			created_at?: string

			// Optional description of the MCP portal.
			description?: string
			created_by?:  string

			// Hostname where the MCP portal is available.
			hostname?: string

			// Unique identifier for the MCP portal.
			id?: string

			// Display name for the MCP portal.
			name?: string

			// Route outbound MCP traffic through Zero Trust Secure Web Gateway.
			secure_web_gateway?: bool
			modified_at?:        string
			modified_by?:        string
		}), [...close({
			// Code Mode policy for this portal. `off`: Code Mode is unavailable; query
			// parameters are ignored. `opt_in`: Code Mode is off by default; clients turn
			// it on with `?codemode=search_and_execute`. `default_on`: Code Mode is on by
			// default; clients can opt out with `?codemode=off`. `enforced`: Code Mode is
			// always on; query parameters are ignored. Defaults to `opt_in` when omitted
			// on create. If both `code_mode` and `allow_code_mode` are sent, they must be
			// consistent or the request returns a 400.
			// Available values: "off", "opt_in", "default_on", "enforced".
			code_mode?: string
			servers?: matchN(1, [close({
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

				// Authentication method used to connect to the upstream MCP server.
				// Available values: "oauth", "bearer", "unauthenticated".
				auth_type?:        string
				default_disabled?: bool
				error?:            string
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

				// Whether administrative authentication is required before capabilities can be
				// synced. Manual OAuth is user-managed and has no administrative
				// authentication flow.
				// Available values: "not_required", "required", "connected", "stale", "manual".
				authentication_status?: string

				// URL of the upstream MCP endpoint.
				hostname?: string

				// Unique identifier for the MCP server.
				id?: string

				// When true, the gateway worker uses the shared Cloudflare-owned OAuth callback
				// endpoint as the redirect_uri for upstream on-behalf OAuth, instead of the
				// customer portal hostname. New public server creates default to true;
				// existing servers default to false from migration until explicitly updated.
				// Effective behavior is gated by the gateway worker's per-env rollout mode KV
				// key.
				is_shared_oauth_callback_enabled?: bool
				last_successful_sync?:             string
				last_synced?:                      string
				modified_at?:                      string
				modified_by?:                      string

				// Display name for the MCP server.
				name?:      string
				on_behalf?: bool
				prompts?: [...{
					[string]: string
				}]

				// Route outbound traffic to this MCP server through Zero Trust Secure Web Gateway.
				secure_web_gateway?: bool

				// Unique identifier for the MCP server.
				server_id?: string

				// Current sync state of the server
				// Available values: "waiting", "ready", "stale", "error".
				status?: string
				tools?: [...{
					[string]: string
				}]
				updated_prompts?: matchN(1, [close({
					enabled?:            bool
					name?:               string
					portal_alias?:       string
					portal_description?: string
					server_alias?:       string
					server_description?: string
				}), [...close({
					enabled?:            bool
					name?:               string
					portal_alias?:       string
					portal_description?: string
					server_alias?:       string
					server_description?: string
				})]])
				created_at?: string
				updated_tools?: matchN(1, [close({
					enabled?:            bool
					name?:               string
					portal_alias?:       string
					portal_description?: string
					server_alias?:       string
					server_description?: string
				}), [...close({
					enabled?:            bool
					name?:               string
					portal_alias?:       string
					portal_description?: string
					server_alias?:       string
					server_description?: string
				})]])

				// Optional description of the MCP server.
				description?: string
				created_by?:  string
			}), [...close({
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

				// Authentication method used to connect to the upstream MCP server.
				// Available values: "oauth", "bearer", "unauthenticated".
				auth_type?:        string
				default_disabled?: bool
				error?:            string
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

				// Whether administrative authentication is required before capabilities can be
				// synced. Manual OAuth is user-managed and has no administrative
				// authentication flow.
				// Available values: "not_required", "required", "connected", "stale", "manual".
				authentication_status?: string

				// URL of the upstream MCP endpoint.
				hostname?: string

				// Unique identifier for the MCP server.
				id?: string

				// When true, the gateway worker uses the shared Cloudflare-owned OAuth callback
				// endpoint as the redirect_uri for upstream on-behalf OAuth, instead of the
				// customer portal hostname. New public server creates default to true;
				// existing servers default to false from migration until explicitly updated.
				// Effective behavior is gated by the gateway worker's per-env rollout mode KV
				// key.
				is_shared_oauth_callback_enabled?: bool
				last_successful_sync?:             string
				last_synced?:                      string
				modified_at?:                      string
				modified_by?:                      string

				// Display name for the MCP server.
				name?:      string
				on_behalf?: bool
				prompts?: [...{
					[string]: string
				}]

				// Route outbound traffic to this MCP server through Zero Trust Secure Web Gateway.
				secure_web_gateway?: bool

				// Unique identifier for the MCP server.
				server_id?: string

				// Current sync state of the server
				// Available values: "waiting", "ready", "stale", "error".
				status?: string
				tools?: [...{
					[string]: string
				}]
				updated_prompts?: matchN(1, [close({
					enabled?:            bool
					name?:               string
					portal_alias?:       string
					portal_description?: string
					server_alias?:       string
					server_description?: string
				}), [...close({
					enabled?:            bool
					name?:               string
					portal_alias?:       string
					portal_description?: string
					server_alias?:       string
					server_description?: string
				})]])
				created_at?: string
				updated_tools?: matchN(1, [close({
					enabled?:            bool
					name?:               string
					portal_alias?:       string
					portal_description?: string
					server_alias?:       string
					server_description?: string
				}), [...close({
					enabled?:            bool
					name?:               string
					portal_alias?:       string
					portal_description?: string
					server_alias?:       string
					server_description?: string
				})]])

				// Optional description of the MCP server.
				description?: string
				created_by?:  string
			})]])
			created_at?: string

			// Optional description of the MCP portal.
			description?: string
			created_by?:  string

			// Hostname where the MCP portal is available.
			hostname?: string

			// Unique identifier for the MCP portal.
			id?: string

			// Display name for the MCP portal.
			name?: string

			// Route outbound MCP traffic through Zero Trust Secure Web Gateway.
			secure_web_gateway?: bool
			modified_at?:        string
			modified_by?:        string
		})]])

		// Search by id, name, hostname
		search?: string
	})
}
