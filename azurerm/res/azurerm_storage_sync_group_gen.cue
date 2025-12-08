package res

#azurerm_storage_sync_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_storage_sync_group")
	close({
		timeouts?:        #timeouts
		id?:              string
		name!:            string
		storage_sync_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
