package res

#azurerm_data_factory_linked_service_data_lake_storage_gen2: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_factory_linked_service_data_lake_storage_gen2")
	close({
		additional_properties?: [string]: string
		annotations?: [...string]
		data_factory_id!:          string
		description?:              string
		id?:                       string
		integration_runtime_name?: string
		name!:                     string
		parameters?: [string]: string
		service_principal_id?:  string
		service_principal_key?: string
		storage_account_key?:   string
		tenant?:                string
		timeouts?:              #timeouts
		url!:                   string
		use_managed_identity?:  bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
