package data

#cloudflare_zero_trust_access_ai_controls_mcp_portal: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_access_ai_controls_mcp_portal")
	close({
		account_id?: string

		// Allow remote code execution in Dynamic Workers (beta)
		allow_code_mode?: bool
		created_at?:      string
		created_by?:      string
		description?:     string
		hostname?:        string

		// portal id
		id?:          string
		modified_at?: string
		modified_by?: string
		name?:        string

		// Route outbound MCP traffic through Zero Trust Secure Web
		// Gateway
		secure_web_gateway?: bool
		filter?: close({
			// Search by id, name, hostname
			search?: string
		})
		servers?: matchN(1, [close({
			// Available values: "oauth", "bearer", "unauthenticated".
			auth_type?:        string
			created_at?:       string
			created_by?:       string
			default_disabled?: bool
			description?:      string
			error?:            string
			hostname?:         string

			// server id
			id?:                   string
			last_successful_sync?: string
			last_synced?:          string
			modified_at?:          string
			modified_by?:          string
			name?:                 string
			on_behalf?:            bool
			prompts?: [...{
				[string]: string
			}]
			status?: string
			tools?: [...{
				[string]: string
			}]
			updated_prompts?: matchN(1, [close({
				description?:  string
				enabled?:      bool
				name?:         string
				portal_alias?: string
				server_alias?: string
			}), [...close({
				description?:  string
				enabled?:      bool
				name?:         string
				portal_alias?: string
				server_alias?: string
			})]])
			updated_tools?: matchN(1, [close({
				description?:  string
				enabled?:      bool
				name?:         string
				portal_alias?: string
				server_alias?: string
			}), [...close({
				description?:  string
				enabled?:      bool
				name?:         string
				portal_alias?: string
				server_alias?: string
			})]])
		}), [...close({
			// Available values: "oauth", "bearer", "unauthenticated".
			auth_type?:        string
			created_at?:       string
			created_by?:       string
			default_disabled?: bool
			description?:      string
			error?:            string
			hostname?:         string

			// server id
			id?:                   string
			last_successful_sync?: string
			last_synced?:          string
			modified_at?:          string
			modified_by?:          string
			name?:                 string
			on_behalf?:            bool
			prompts?: [...{
				[string]: string
			}]
			status?: string
			tools?: [...{
				[string]: string
			}]
			updated_prompts?: matchN(1, [close({
				description?:  string
				enabled?:      bool
				name?:         string
				portal_alias?: string
				server_alias?: string
			}), [...close({
				description?:  string
				enabled?:      bool
				name?:         string
				portal_alias?: string
				server_alias?: string
			})]])
			updated_tools?: matchN(1, [close({
				description?:  string
				enabled?:      bool
				name?:         string
				portal_alias?: string
				server_alias?: string
			}), [...close({
				description?:  string
				enabled?:      bool
				name?:         string
				portal_alias?: string
				server_alias?: string
			})]])
		})]])
	})
}
