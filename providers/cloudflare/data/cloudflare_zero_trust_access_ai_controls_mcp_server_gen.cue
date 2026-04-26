package data

#cloudflare_zero_trust_access_ai_controls_mcp_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_access_ai_controls_mcp_server")
	close({
		account_id?: string

		// Available values: "oauth", "bearer", "unauthenticated".
		auth_type?:   string
		created_at?:  string
		created_by?:  string
		description?: string
		error?:       string
		hostname?:    string

		// server id
		id?:                   string
		last_successful_sync?: string
		last_synced?:          string
		modified_at?:          string
		modified_by?:          string
		name?:                 string
		prompts?: [...{
			[string]: string
		}]
		status?: string
		tools?: [...{
			[string]: string
		}]
		filter?: close({
			// Search by id, name
			search?: string
		})
		updated_prompts?: matchN(1, [close({
			alias?:       string
			description?: string
			enabled?:     bool
			name?:        string
		}), [...close({
			alias?:       string
			description?: string
			enabled?:     bool
			name?:        string
		})]])
		updated_tools?: matchN(1, [close({
			alias?:       string
			description?: string
			enabled?:     bool
			name?:        string
		}), [...close({
			alias?:       string
			description?: string
			enabled?:     bool
			name?:        string
		})]])
	})
}
