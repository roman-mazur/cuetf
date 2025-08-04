package data

#cloudflare_list_item: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_list_item")
	close({
		account_id!: string
		item_id!:    string
		list_id!:    string
	})
}
