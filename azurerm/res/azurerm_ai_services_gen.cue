package res

import "list"

#azurerm_ai_services: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_ai_services")
	close({
		custom_subdomain_name?: string
		customer_managed_key?: matchN(1, [#customer_managed_key, list.MaxItems(1) & [...#customer_managed_key]])
		endpoint?: string
		fqdns?: [...string]
		id?:                                 string
		local_authentication_enabled?:       bool
		location!:                           string
		name!:                               string
		outbound_network_access_restricted?: bool
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		network_acls?: matchN(1, [#network_acls, list.MaxItems(1) & [...#network_acls]])
		primary_access_key?:    string
		public_network_access?: string
		resource_group_name!:   string
		secondary_access_key?:  string
		sku_name!:              string
		storage?: matchN(1, [#storage, [...#storage]])
		timeouts?: #timeouts
		tags?: [string]: string
	})

	#customer_managed_key: close({
		identity_client_id?: string
		key_vault_key_id?:   string
		managed_hsm_key_id?: string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#network_acls: close({
		virtual_network_rules?: matchN(1, [_#defs."/$defs/network_acls/$defs/virtual_network_rules", [..._#defs."/$defs/network_acls/$defs/virtual_network_rules"]])
		bypass?:         string
		default_action!: string
		ip_rules?: [...string]
	})

	#storage: close({
		identity_client_id?: string
		storage_account_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/network_acls/$defs/virtual_network_rules": close({
		ignore_missing_vnet_service_endpoint?: bool
		subnet_id!:                            string
	})
}
