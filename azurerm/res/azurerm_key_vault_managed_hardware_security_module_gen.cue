package res

import "list"

#azurerm_key_vault_managed_hardware_security_module: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_key_vault_managed_hardware_security_module")
	close({
		admin_object_ids!: [...string]
		hsm_uri?:                       string
		id?:                            string
		location!:                      string
		name!:                          string
		public_network_access_enabled?: bool
		purge_protection_enabled?:      bool
		resource_group_name!:           string
		network_acls?: matchN(1, [#network_acls, list.MaxItems(1) & [...#network_acls]])
		security_domain_encrypted_data?: string
		security_domain_key_vault_certificate_ids?: [...string]
		security_domain_quorum?:     number
		timeouts?:                   #timeouts
		sku_name!:                   string
		soft_delete_retention_days?: number
		tags?: [string]: string
		tenant_id!: string
	})

	#network_acls: close({
		bypass!:         string
		default_action!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
