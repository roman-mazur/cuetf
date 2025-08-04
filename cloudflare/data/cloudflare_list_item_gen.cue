package data

#cloudflare_list_item: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_list_item")
	close({
		// The Account ID for this resource.
		account_id!: string

		// Defines the unique ID of the item in the List.
		item_id!: string

		// The unique ID of the list.
		list_id!: string
	})
}
