package res

#azurerm_storage_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_storage_queue")
	close({
		timeouts?: #timeouts
		id?:       string
		metadata?: [string]: string
		name!:               string
		storage_account_id?: string
		url?:                string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
