package res

cloudflare_zero_trust_access_ai_controls_mcp_portal: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_access_ai_controls_mcp_portal")
	close({
		account_id!: string

		// Code Mode policy for this portal. `off`: Code Mode is unavailable; query
		// parameters are ignored. `opt_in`: Code Mode is off by default; clients turn
		// it on with `?codemode=search_and_execute`. `default_on`: Code Mode is on by
		// default; clients can opt out with `?codemode=off`. `enforced`: Code Mode is
		// always on; query parameters are ignored. Defaults to `opt_in` when omitted
		// on create. If both `code_mode` and `allow_code_mode` are sent, they must be
		// consistent or the request returns a 400.
		// Available values: "off", "opt_in", "default_on", "enforced".
		code_mode?:  string
		created_at?: string
		created_by?: string

		// Optional description of the MCP portal.
		description?: string

		// Hostname where the MCP portal is available.
		hostname!: string

		// Unique identifier for the MCP portal.
		id!:          string
		modified_at?: string
		modified_by?: string

		// Display name for the MCP portal.
		name!: string

		// Route outbound MCP traffic through Zero Trust Secure Web Gateway.
		secure_web_gateway?: bool

		// MCP servers attached to the portal and their portal-specific settings.
		servers?: matchN(1, [close({
			// Disable this server by default for clients connecting through the portal.
			default_disabled?: bool

			// Portal-specific prompt overrides.
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

			// Use end-user OAuth credentials when connecting this server to the portal.
			on_behalf?: bool

			// Portal-specific tool overrides.
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

			// Unique identifier for the MCP server.
			server_id!: string
		}), [...close({
			// Disable this server by default for clients connecting through the portal.
			default_disabled?: bool

			// Portal-specific prompt overrides.
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

			// Use end-user OAuth credentials when connecting this server to the portal.
			on_behalf?: bool

			// Portal-specific tool overrides.
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

			// Unique identifier for the MCP server.
			server_id!: string
		})]])
	})
}
