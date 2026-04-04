package res

#azurerm_storage_account_static_website: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_storage_account_static_website")
	close({
		timeouts?:           #timeouts
		error_404_document?: string
		id?:                 string
		index_document?:     string
		storage_account_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
