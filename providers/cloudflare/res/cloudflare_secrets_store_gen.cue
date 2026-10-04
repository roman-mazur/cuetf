package res

cloudflare_secrets_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_secrets_store")
	close({
		account_id!: string

		// When the secret was created.
		created?: string

		// When true, cascade-deletes all secrets in the store before deleting the store itself.
		// Required when deleting a non-empty store. Without this parameter, attempting to
		// delete a non-empty store returns 409.
		force?: bool

		// Store Identifier.
		id?: string

		// When the secret was modified.
		modified?: string

		// The name of the store.
		name!: string
	})
}
