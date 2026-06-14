package data

#cloudflare_zero_trust_resource_library_categories: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_resource_library_categories")
	close({
		account_id!: string

		// Limit of number of results to return.
		limit?: number

		// Max items to fetch, default: 1000
		max_items?: number

		// Offset of results to return.
		offset?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Returns the category creation time.
			created_at?: string

			// Returns the category description.
			description?: string

			// Returns the category ID.
			id?: string

			// Returns the category name.
			name?: string
		}), [...close({
			// Returns the category creation time.
			created_at?: string

			// Returns the category description.
			description?: string

			// Returns the category ID.
			id?: string

			// Returns the category name.
			name?: string
		})]])
	})
}
