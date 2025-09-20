package res

import "list"

#azurerm_data_factory_linked_service_snowflake: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_factory_linked_service_snowflake")
	close({
		additional_properties?: [string]: string
		annotations?: [...string]
		connection_string!: string
		data_factory_id!:   string
		key_vault_password?: matchN(1, [#key_vault_password, list.MaxItems(1) & [...#key_vault_password]])
		description?:              string
		id?:                       string
		integration_runtime_name?: string
		name!:                     string
		parameters?: [string]: string
		timeouts?: #timeouts
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
