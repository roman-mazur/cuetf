package res

import "list"

#azurerm_data_factory_linked_service_sql_managed_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_factory_linked_service_sql_managed_instance")
	close({
		annotations?: [...string]
		connection_string?: string
		data_factory_id!:   string
		description?:       string
		key_vault_connection_string?: matchN(1, [#key_vault_connection_string, list.MaxItems(1) & [...#key_vault_connection_string]])
		id?:                       string
		integration_runtime_name?: string
		name!:                     string
		parameters?: [string]: string
		service_principal_id?:  string
		service_principal_key?: string
		key_vault_password?: matchN(1, [#key_vault_password, list.MaxItems(1) & [...#key_vault_password]])
		timeouts?: #timeouts
		tenant?:   string
	})

	#key_vault_connection_string: close({
		linked_service_name!: string
		secret_name!:         string
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
