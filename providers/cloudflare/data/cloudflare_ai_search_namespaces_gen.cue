package data

#cloudflare_ai_search_namespaces: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_ai_search_namespaces")
	close({
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Filter namespaces whose name or description contains this
		// string (case-insensitive).
		search?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			created_at?: string

			// Optional description for the namespace. Max 256 characters.
			description?: string
			name?:        string
		}), [...close({
			created_at?: string

			// Optional description for the namespace. Max 256 characters.
			description?: string
			name?:        string
		})]])
	})
}
