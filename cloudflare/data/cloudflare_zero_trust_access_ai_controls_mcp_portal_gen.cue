package data

#cloudflare_zero_trust_access_ai_controls_mcp_portal: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_ai_controls_mcp_portal")
	close({
		// portal id
		id?:          string
		account_id!:  string
		created_at?:  string
		created_by?:  string
		description?: string
		filter?: close({
			// Search by id, name, hostname
			search?: string
		})
		hostname?:    string
		modified_at?: string
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
			id?:          string
			last_synced?: string
			modified_at?: string
			modified_by?: string
			name?:        string
			on_behalf?:   bool
			prompts?: [...{
				[string]: string
			}]
			status?: string
			tools?: [...{
				[string]: string
			}]
			updated_prompts?: _
			updated_tools?:   _
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
			id?:          string
			last_synced?: string
			modified_at?: string
			modified_by?: string
			name?:        string
			on_behalf?:   bool
			prompts?: [...{
				[string]: string
			}]
			status?: string
			tools?: [...{
				[string]: string
			}]
			updated_prompts?: _
			updated_tools?:   _
		})]])
		modified_by?: string
		name?:        string
	})
}
