package res

cloudflare_secrets_store_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_secrets_store_secret")
	close({
		// Account Identifier
		account_id!: string

		// Freeform text describing the secret
		comment?: string

		// Whenthe secret was created.
		created?: string

		// Secret identifier tag.
		id?: string

		// When the secret was modified.
		modified?: string

		// The name of the secret
		name!: string

		// The list of services that can use this secret. Valid values are `workers`,
		// `ai_gateway`, `dex`, and `access`. Must be listed in alphabetical order.
		scopes!: [...string]

		// Available values: "pending", "active", "deleted".
		status?: string

		// Store Identifier
		store_id!: string

		// The value of the secret. Maximum 64 KiB (65,536 bytes). Note that this is
		// 'write only' - no API response will provide this value, it is only used to
		// create/modify secrets.
		value!: string
	})
}
