package data

#cloudflare_zero_trust_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_list")
	close({
		// The description of the list.
		description?: string
		account_id!:  string
		created_at?:  string

		// API Resource UUID tag.
		id?: string

		// The items in the list.
		items?: matchN(1, [close({
			created_at?: string

			// The description of the list item, if present
			description?: string

			// The value of the item in a list.
			value?: string
		}), [...close({
			created_at?: string

			// The description of the list item, if present
			description?: string

			// The value of the item in a list.
			value?: string
		})]])

		// The number of items in the list.
		list_count?: number

		// API Resource UUID tag.
		list_id?: string
		filter?: close({
			// The type of list.
			// Available values: "SERIAL", "URL", "DOMAIN", "EMAIL", "IP".
			type?: string
		})

		// The name of the list.
		name?: string

		// The type of list.
		// Available values: "SERIAL", "URL", "DOMAIN", "EMAIL", "IP".
		type?:       string
		updated_at?: string
	})
}
