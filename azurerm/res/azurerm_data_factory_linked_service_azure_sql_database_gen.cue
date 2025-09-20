package res

import "list"

#azurerm_data_factory_linked_service_azure_sql_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_factory_linked_service_azure_sql_database")
	close({
		additional_properties?: [string]: string
		annotations?: [...string]
		connection_string?:        string
		credential_name?:          string
		data_factory_id!:          string
		description?:              string
		id?:                       string
		integration_runtime_name?: string
		key_vault_connection_string?: matchN(1, [#key_vault_connection_string, list.MaxItems(1) & [...#key_vault_connection_string]])
		key_vault_password?: matchN(1, [#key_vault_password, list.MaxItems(1) & [...#key_vault_password]])
		name!: string
		parameters?: [string]: string
		timeouts?:              #timeouts
		service_principal_id?:  string
		service_principal_key?: string
		tenant_id?:             string
		use_managed_identity?:  bool
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
