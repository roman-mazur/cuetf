package data

#cloudflare_zero_trust_resource_library_category: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_resource_library_category")
	close({
		account_id!: string

		// Returns the category creation time.
		created_at?: string

		// Returns the category description.
		description?: string
		id!:          string

		// Returns the category name.
		name?: string
	})
}
