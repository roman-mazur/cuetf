package data

#cloudflare_zero_trust_lists: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_lists")
	close({
		// The items returned by the data source
		result?: matchN(1, [close({
			// Provide the list description.
			description?: string

			// Identify the API resource with a UUID.
			id?:         string
			created_at?: string

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

			// Specify the list name.
			name?: string

			// Specify the list type.
			// Available values: "SERIAL", "URL", "DOMAIN", "EMAIL", "IP".
			type?:       string
			updated_at?: string
		}), [...close({
			// Provide the list description.
			description?: string

			// Identify the API resource with a UUID.
			id?:         string
			created_at?: string

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

			// Specify the list name.
			name?: string

			// Specify the list type.
			// Available values: "SERIAL", "URL", "DOMAIN", "EMAIL", "IP".
			type?:       string
			updated_at?: string
		})]])

		// Max items to fetch, default: 1000
		max_items?:  number
		account_id!: string

		// Specify the list type.
		// Available values: "SERIAL", "URL", "DOMAIN", "EMAIL", "IP".
		type?: string
	})
}
