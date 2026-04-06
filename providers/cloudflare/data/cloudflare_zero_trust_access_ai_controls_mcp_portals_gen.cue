package data

#cloudflare_zero_trust_access_ai_controls_mcp_portals: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_access_ai_controls_mcp_portals")
	close({
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Search by id, name, hostname
		search?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			created_at?:  string
			created_by?:  string
			description?: string
			hostname?:    string

			// portal id
			id?:          string
			modified_at?: string
			modified_by?: string
			name?:        string

			// Route outbound MCP traffic through Zero Trust Secure Web
			// Gateway
			secure_web_gateway?: bool
		}), [...close({
			created_at?:  string
			created_by?:  string
			description?: string
			hostname?:    string

			// portal id
			id?:          string
			modified_at?: string
			modified_by?: string
			name?:        string

			// Route outbound MCP traffic through Zero Trust Secure Web
			// Gateway
			secure_web_gateway?: bool
		})]])
	})
}
