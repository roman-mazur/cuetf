package res

import "list"

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
		location!:                        string
		name!:                            string
		public_network_access_enabled?:   bool
		purge_protection_enabled?:        bool
		contact?: matchN(1, [#contact, [...#contact]])
		network_acls?: matchN(1, [#network_acls, list.MaxItems(1) & [...#network_acls]])
		rbac_authorization_enabled?: bool
		timeouts?:                   #timeouts
		resource_group_name!:        string
		sku_name!:                   string
		soft_delete_retention_days?: number
		tags?: [string]: string
		tenant_id!: string
		vault_uri?: string
	})

	#contact: close({
		email!: string
		name?:  string
		phone?: string
	})

	#network_acls: close({
		bypass!:         string
		default_action!: string
		ip_rules?: [...string]
		virtual_network_subnet_ids?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
