package data

cloudflare_secrets_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_secrets_store")
	close({
		// Account Identifier
		account_id!: string

		// Whenthe secret was created.
		created?: string
		filter?: close({
			// Direction to sort objects
			// Available values: "asc", "desc".
			direction?: string

			// Order secrets by values in the given field
			// Available values: "name", "comment", "created", "modified", "status".
			order?: string
		})

		// Store Identifier
		id?: string

		// When the secret was modified.
		modified?: string

		// The name of the store
		name?: string

		// Store Identifier
		store_id?: string
	})
}
