package res

cloudflare_secrets_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_secrets_store")
	close({
		// Account Identifier
		account_id!: string

		// Whenthe secret was created.
		created?: string

		// Store Identifier
		id?: string

		// When the secret was modified.
		modified?: string

		// The name of the store
		name!: string
	})
}
