package res

import "list"

#azurerm_data_factory_linked_service_azure_blob_storage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_factory_linked_service_azure_blob_storage")
	close({
		additional_properties?: [string]: string
		key_vault_sas_token?: matchN(1, [#key_vault_sas_token, list.MaxItems(1) & [...#key_vault_sas_token]])
		annotations?: [...string]
		connection_string?:          string
		connection_string_insecure?: string
		data_factory_id!:            string
		description?:                string
		id?:                         string
		integration_runtime_name?:   string
		name!:                       string
		parameters?: [string]: string
		service_principal_linked_key_vault_key?: matchN(1, [#service_principal_linked_key_vault_key, list.MaxItems(1) & [...#service_principal_linked_key_vault_key]])
		sas_uri?:               string
		service_endpoint?:      string
		service_principal_id?:  string
		service_principal_key?: string
		timeouts?:              #timeouts
		storage_kind?:          string
		tenant_id?:             string
		use_managed_identity?:  bool
	})

	#key_vault_sas_token: close({
		linked_service_name!: string
		secret_name!:         string
	})

	#service_principal_linked_key_vault_key: close({
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
