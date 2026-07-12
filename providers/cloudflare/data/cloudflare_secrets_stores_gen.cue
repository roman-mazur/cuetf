package data

cloudflare_secrets_stores: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_secrets_stores")
	close({
		// Account Identifier
		account_id!: string

		// Direction to sort objects
		// Available values: "asc", "desc".
		direction?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Order secrets by values in the given field
		// Available values: "name", "comment", "created", "modified", "status".
		order?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// Account Identifier
			account_id?: string

			// Whenthe secret was created.
			created?: string

			// Store Identifier
			id?: string

			// When the secret was modified.
			modified?: string

			// The name of the store
			name?: string
		}), [...close({
			// Account Identifier
			account_id?: string

			// Whenthe secret was created.
			created?: string

			// Store Identifier
			id?: string

			// When the secret was modified.
			modified?: string

			// The name of the store
			name?: string
		})]])
	})
}
