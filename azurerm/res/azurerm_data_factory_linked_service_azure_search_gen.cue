package res

#azurerm_data_factory_linked_service_azure_search: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_factory_linked_service_azure_search")
	close({
		additional_properties?: [string]: string
		annotations?: [...string]
		data_factory_id!:          string
		description?:              string
		encrypted_credential?:     string
		id?:                       string
		integration_runtime_name?: string
		name!:                     string
		parameters?: [string]: string
		timeouts?:           #timeouts
		search_service_key!: string
		url!:                string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
