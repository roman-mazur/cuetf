package data

#cloudflare_zero_trust_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_list")
	close({
		account_id!: string

		// Provide the list description.
		description?: string
		created_at?:  string

		// Identify the API resource with a UUID.
		id?: string

		// Provide the list items.
		items?: matchN(1, [close({
			created_at?: string

			// Provide the list item description (optional).
			description?: string

			// Specify the item value.
			value?: string
		}), [...close({
			created_at?: string

			// Provide the list item description (optional).
			description?: string

			// Specify the item value.
			value?: string
		})]])

		// Indicate the number of items in the list.
		list_count?: number

		// Identify the API resource with a UUID.
		list_id?: string

		// Specify the list name.
		name?: string
		filter?: close({
			// Specify the list type.
			// Available values: "SERIAL", "URL", "DOMAIN", "EMAIL", "IP",
			// "CATEGORY", "LOCATION", "DEVICE".
			type?: string
		})

		// Specify the list type.
		// Available values: "SERIAL", "URL", "DOMAIN", "EMAIL", "IP",
		// "CATEGORY", "LOCATION", "DEVICE".
		type?:       string
		updated_at?: string
	})
}
