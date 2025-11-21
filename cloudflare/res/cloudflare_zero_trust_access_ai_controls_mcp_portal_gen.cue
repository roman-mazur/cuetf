package res

#cloudflare_zero_trust_access_ai_controls_mcp_portal: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_ai_controls_mcp_portal")
	close({
		account_id!: string
		created_at?: string
		servers?: matchN(1, [close({
			default_disabled?: bool
			updated_prompts?: matchN(1, [close({
				description?: string
				enabled?:     bool
				name!:        string
			}), [...close({
				description?: string
				enabled?:     bool
				name!:        string
			})]])
			updated_tools?: matchN(1, [close({
				description?: string
				enabled?:     bool
				name!:        string
			}), [...close({
				description?: string
				enabled?:     bool
				name!:        string
			})]])

			// server id
			server_id!: string
			on_behalf?: bool
		}), [...close({
			default_disabled?: bool
			updated_prompts?: matchN(1, [close({
				description?: string
				enabled?:     bool
				name!:        string
			}), [...close({
				description?: string
				enabled?:     bool
				name!:        string
			})]])
			updated_tools?: matchN(1, [close({
				description?: string
				enabled?:     bool
				name!:        string
			}), [...close({
				description?: string
				enabled?:     bool
				name!:        string
			})]])

			// server id
			server_id!: string
			on_behalf?: bool
		})]])
		created_by?:  string
		description?: string
		hostname!:    string

		// portal id
		id!:          string
		modified_at?: string
		modified_by?: string
		name!:        string
	})
}
