package res

#azurerm_data_factory_linked_service_cosmosdb_mongoapi: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_factory_linked_service_cosmosdb_mongoapi")
	close({
		additional_properties?: [string]: string
		annotations?: [...string]
		connection_string?:        string
		data_factory_id!:          string
		database?:                 string
		description?:              string
		id?:                       string
		integration_runtime_name?: string
		name!:                     string
		timeouts?:                 #timeouts
		parameters?: [string]: string
		server_version_is_32_or_higher?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
