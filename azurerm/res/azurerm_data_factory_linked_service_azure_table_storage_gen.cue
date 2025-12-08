package res

#azurerm_data_factory_linked_service_azure_table_storage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_factory_linked_service_azure_table_storage")
	close({
		timeouts?: #timeouts
		additional_properties?: [string]: string
		annotations?: [...string]
		connection_string!:        string
		data_factory_id!:          string
		description?:              string
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
