package res

#cloudflare_zero_trust_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_list")
	close({
		// Add items to the list.
		items?: matchN(1, [close({
			// Provide the list item description (optional).
			description?: string

			// Specify the item value.
			value?: string
		}), [...close({
			// Provide the list item description (optional).
			description?: string

			// Specify the item value.
			value?: string
		})]])
		account_id!: string
		created_at?: string

		// Provide the list description.
		description?: string

		// Identify the API resource with a UUID.
		id?: string

		// Indicate the number of items in the list.
		list_count?: number

		// Specify the list name.
		name!: string

		// Specify the list type.
		// Available values: "SERIAL", "URL", "DOMAIN", "EMAIL", "IP".
		type!:       string
		updated_at?: string
	})
}
