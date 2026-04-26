package res

#cloudflare_zero_trust_access_ai_controls_mcp_portal: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_access_ai_controls_mcp_portal")
	close({
		account_id?: string

		// Allow remote code execution in Dynamic Workers (beta)
		allow_code_mode?: bool
		created_at?:      string
		created_by?:      string
		description?:     string
		hostname!:        string

		// portal id
		id!:          string
		modified_at?: string
		modified_by?: string
		name!:        string

		// Route outbound MCP traffic through Zero Trust Secure Web
		// Gateway
		secure_web_gateway?: bool
		servers?: matchN(1, [close({
			default_disabled?: bool
			on_behalf?:        bool

			// server id
			server_id!: string
			updated_prompts?: matchN(1, [close({
				alias?:       string
				description?: string
				enabled?:     bool
				name!:        string
			}), [...close({
				alias?:       string
				description?: string
				enabled?:     bool
				name!:        string
			})]])
			updated_tools?: matchN(1, [close({
				alias?:       string
				description?: string
				enabled?:     bool
				name!:        string
			}), [...close({
				alias?:       string
				description?: string
				enabled?:     bool
				name!:        string
			})]])
		}), [...close({
			default_disabled?: bool
			on_behalf?:        bool

			// server id
			server_id!: string
			updated_prompts?: matchN(1, [close({
				alias?:       string
				description?: string
				enabled?:     bool
				name!:        string
			}), [...close({
				alias?:       string
				description?: string
				enabled?:     bool
				name!:        string
			})]])
			updated_tools?: matchN(1, [close({
				alias?:       string
				description?: string
				enabled?:     bool
				name!:        string
			}), [...close({
				alias?:       string
				description?: string
				enabled?:     bool
				name!:        string
			})]])
		})]])
	})
}
