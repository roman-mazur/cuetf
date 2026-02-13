package data

#cloudflare_zero_trust_access_ai_controls_mcp_servers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_access_ai_controls_mcp_servers")
	close({
		// The items returned by the data source
		result?: matchN(1, [close({
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
		}), [...close({
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
		})]])

		// Max items to fetch, default: 1000
		max_items?:  number
		account_id!: string

		// Search by id, name
		search?: string
	})
}
