package res

#azurerm_data_factory_linked_service_kusto: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_factory_linked_service_kusto")
	close({
		additional_properties?: [string]: string
		annotations?: [...string]
		data_factory_id!:          string
		description?:              string
		id?:                       string
		integration_runtime_name?: string
		kusto_database_name!:      string
		kusto_endpoint!:           string
		name!:                     string
		parameters?: [string]: string
		service_principal_id?:  string
		service_principal_key?: string
		timeouts?:              #timeouts
		tenant?:                string
		use_managed_identity?:  bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
