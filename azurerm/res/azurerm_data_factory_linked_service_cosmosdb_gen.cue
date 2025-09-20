package res

#azurerm_data_factory_linked_service_cosmosdb: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_factory_linked_service_cosmosdb")
	close({
		account_endpoint?: string
		account_key?:      string
		additional_properties?: [string]: string
		annotations?: [...string]
		connection_string?:        string
		data_factory_id!:          string
		database?:                 string
		description?:              string
		timeouts?:                 #timeouts
		id?:                       string
		integration_runtime_name?: string
		name!:                     string
		parameters?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
