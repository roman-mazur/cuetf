package res

#cloudflare_calls_sfu_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_calls_sfu_app")
	close({
		// The account identifier tag.
		account_id!: string

		// A Cloudflare-generated unique identifier for a item.
		app_id?: string

		// The date and time the item was created.
		created?: string

		// The date and time the item was last modified.
		modified?: string

		// A short description of Calls app, not shown to end users.
		name?: string

		// Bearer token
		secret?: string

		// A Cloudflare-generated unique identifier for a item.
		uid?: string
	})
}
