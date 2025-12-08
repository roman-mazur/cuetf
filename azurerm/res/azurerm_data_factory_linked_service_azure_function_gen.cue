package res

import "list"

#azurerm_data_factory_linked_service_azure_function: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_factory_linked_service_azure_function")
	close({
		additional_properties?: [string]: string
		annotations?: [...string]
		data_factory_id!:          string
		description?:              string
		id?:                       string
		integration_runtime_name?: string
		key?:                      string
		key_vault_key?: matchN(1, [#key_vault_key, list.MaxItems(1) & [...#key_vault_key]])
		name!:     string
		timeouts?: #timeouts
		parameters?: [string]: string
		url!: string
	})

	#key_vault_key: close({
		linked_service_name!: string
		secret_name!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
