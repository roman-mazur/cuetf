package data

#cloudflare_calls_turn_apps: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_calls_turn_apps")
	close({
		// The account identifier tag.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// The date and time the item was created.
			created?: string

			// The date and time the item was last modified.
			modified?: string

			// A short description of Calls app, not shown to end users.
			name?: string

			// A Cloudflare-generated unique identifier for a item.
			uid?: string
		}), [...close({
			// The date and time the item was created.
			created?: string

			// The date and time the item was last modified.
			modified?: string

			// A short description of Calls app, not shown to end users.
			name?: string

			// A Cloudflare-generated unique identifier for a item.
			uid?: string
		})]])
	})
}
