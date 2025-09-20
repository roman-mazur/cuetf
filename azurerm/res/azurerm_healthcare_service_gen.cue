package res

import "list"

#azurerm_healthcare_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_healthcare_service")
	close({
		access_policy_object_ids?: [...string]
		configuration_export_storage_account_name?: string
		cosmosdb_key_vault_key_versionless_id?:     string
		cosmosdb_throughput?:                       number
		id?:                                        string
		kind?:                                      string
		location!:                                  string
		name!:                                      string
		authentication_configuration?: matchN(1, [#authentication_configuration, list.MaxItems(1) & [...#authentication_configuration]])
		public_network_access_enabled?: bool
		cors_configuration?: matchN(1, [#cors_configuration, list.MaxItems(1) & [...#cors_configuration]])
		resource_group_name!: string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		timeouts?: #timeouts
		tags?: [string]: string
	})

	#authentication_configuration: close({
		audience?:            string
		authority?:           string
		smart_proxy_enabled?: bool
	})

	#cors_configuration: close({
		allow_credentials?: bool
		allowed_headers?: [...string]
		allowed_methods?: [...string]
		allowed_origins?: [...string]
		max_age_in_seconds?: number
	})

	#identity: close({
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
