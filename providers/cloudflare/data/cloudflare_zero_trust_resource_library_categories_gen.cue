package data

cloudflare_zero_trust_resource_library_categories: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_resource_library_categories")
	close({
		account_id!: string

		// Number of results to return. Defaults to 25; values are clamped to 1–250.
		limit?: number

		// Max items to fetch, default: 1000
		max_items?: number

		// Number of results to skip. Defaults to 0; negative values are clamped to 0.
		offset?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Returns the category creation time.
			created_at?: string

			// Returns the category description.
			description?: string

			// Numeric identifier for an application category.
			id?: number

			// Returns the category name.
			name?: string
		}), [...close({
			// Returns the category creation time.
			created_at?: string

			// Returns the category description.
			description?: string

			// Numeric identifier for an application category.
			id?: number

			// Returns the category name.
			name?: string
		})]])
	})
}
