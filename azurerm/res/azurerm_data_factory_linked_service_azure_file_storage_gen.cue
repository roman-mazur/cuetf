package res

import "list"

#azurerm_data_factory_linked_service_azure_file_storage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_factory_linked_service_azure_file_storage")
	close({
		additional_properties?: [string]: string
		annotations?: [...string]
		connection_string!: string
		data_factory_id!:   string
		description?:       string
		file_share?:        string
		host?:              string
		key_vault_password?: matchN(1, [#key_vault_password, list.MaxItems(1) & [...#key_vault_password]])
		id?:                       string
		integration_runtime_name?: string
		timeouts?:                 #timeouts
		name!:                     string
		parameters?: [string]: string
		password?: string
		user_id?:  string
	})

	#key_vault_password: close({
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
