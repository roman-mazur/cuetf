package res

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

		// The number of items in the list.
		list_count?: number

		// items to add to the list.
		items?: matchN(1, [close({
			// The description of the list item, if present
			description?: string

			// The value of the item in a list.
			value?: string
		}), [...close({
			// The description of the list item, if present
			description?: string

			// The value of the item in a list.
			value?: string
		})]])

		// The name of the list.
		name!: string

		// The type of list.
		// Available values: "SERIAL", "URL", "DOMAIN", "EMAIL", "IP".
		type!:       string
		updated_at?: string
	})
}
