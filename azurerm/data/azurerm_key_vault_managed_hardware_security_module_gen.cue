package data

#azurerm_key_vault_managed_hardware_security_module: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_key_vault_managed_hardware_security_module")
	close({
		admin_object_ids?: [...string]
		hsm_uri?:                    string
		id?:                         string
		location?:                   string
		name!:                       string
		purge_protection_enabled?:   bool
		resource_group_name!:        string
		sku_name?:                   string
		soft_delete_retention_days?: number
		timeouts?:                   #timeouts
		tags?: [string]: string
		tenant_id?: string
	})

	#timeouts: close({
		read?: string
	})
}
