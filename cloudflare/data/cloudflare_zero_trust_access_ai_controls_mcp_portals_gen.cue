package data

#cloudflare_zero_trust_access_ai_controls_mcp_portals: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_access_ai_controls_mcp_portals")
	close({
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
		})]])

		// Max items to fetch, default: 1000
		max_items?:  number
		account_id!: string

		// Search by id, name, hostname
		search?: string
	})
}
