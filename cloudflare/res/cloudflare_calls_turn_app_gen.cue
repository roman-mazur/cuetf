package res

#cloudflare_calls_turn_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_calls_turn_app")
	close({
		// The account identifier tag.
		account_id!: string

		// The date and time the item was created.
		created?: string

		// Bearer token
		key?: string

		// A Cloudflare-generated unique identifier for a item.
		key_id?: string

		// The date and time the item was last modified.
		modified?: string

		// A short description of a TURN key, not shown to end users.
		name?: string

		// A Cloudflare-generated unique identifier for a item.
		uid?: string
	})
}
