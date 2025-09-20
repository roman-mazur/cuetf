package res

#azurerm_data_factory_linked_service_key_vault: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_factory_linked_service_key_vault")
	close({
		timeouts?: #timeouts
		additional_properties?: [string]: string
		annotations?: [...string]
		data_factory_id!:          string
		description?:              string
		id?:                       string
		integration_runtime_name?: string
		key_vault_id!:             string
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
