package data

#azurerm_key_vault: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_key_vault")
	close({
		access_policy?: [...close({
			application_id?: string
			certificate_permissions?: [...string]
			key_permissions?: [...string]
			object_id?: string
			secret_permissions?: [...string]
			storage_permissions?: [...string]
			tenant_id?: string
		})]
		enabled_for_deployment?:          bool
		enabled_for_disk_encryption?:     bool
		enabled_for_template_deployment?: bool
		id?:                              string
		location?:                        string
		name!:                            string
		network_acls?: [...close({
			bypass?:         string
			default_action?: string
			ip_rules?: [...string]
			virtual_network_subnet_ids?: [...string]
		})]
		public_network_access_enabled?: bool
		timeouts?:                      #timeouts
		purge_protection_enabled?:      bool
		rbac_authorization_enabled?:    bool
		resource_group_name!:           string
		sku_name?:                      string
		tags?: [string]: string
		tenant_id?: string
		vault_uri?: string
	})

	#timeouts: close({
		read?: string
	})
}
