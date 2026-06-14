package data

#cloudflare_secrets_store_secrets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_secrets_store_secrets")
	close({
		// Account Identifier
		account_id!: string

		// Direction to sort objects
		// Available values: "asc", "desc".
		direction?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Order secrets by values in the given field
		// Available values: "name", "comment", "created", "modified",
		// "status".
		order?: string

		// Only secrets with the given scopes will be returned
		scopes?: [...[...string]]

		// Search secrets using a filter string, filtering across name and
		// comment
		search?: string

		// Store Identifier
		store_id!: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// Freeform text describing the secret
			comment?: string

			// Whenthe secret was created.
			created?: string

			// Secret identifier tag.
			id?: string

			// When the secret was modified.
			modified?: string

			// The name of the secret
			name?: string

			// The list of services that can use this secret.
			scopes?: [...string]

			// Available values: "pending", "active", "deleted".
			status?: string

			// Store Identifier
			store_id?: string
		}), [...close({
			// Freeform text describing the secret
			comment?: string

			// Whenthe secret was created.
			created?: string

			// Secret identifier tag.
			id?: string

			// When the secret was modified.
			modified?: string

			// The name of the secret
			name?: string

			// The list of services that can use this secret.
			scopes?: [...string]

			// Available values: "pending", "active", "deleted".
			status?: string

			// Store Identifier
			store_id?: string
		})]])
	})
}
