package res

import "list"

#azurerm_batch_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_batch_account")
	close({
		account_endpoint?: string
		allowed_authentication_modes?: [...string]
		encryption?: [...close({
			key_vault_key_id?: string
		})]
		id?:       string
		location!: string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		name!:                          string
		pool_allocation_mode?:          string
		primary_access_key?:            string
		public_network_access_enabled?: bool
		resource_group_name!:           string
		key_vault_reference?: matchN(1, [#key_vault_reference, list.MaxItems(1) & [...#key_vault_reference]])
		secondary_access_key?:                string
		storage_account_authentication_mode?: string
		storage_account_id?:                  string
		storage_account_node_identity?:       string
		tags?: [string]: string
		network_profile?: matchN(1, [#network_profile, list.MaxItems(1) & [...#network_profile]])
		timeouts?: #timeouts
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#key_vault_reference: close({
		id!:  string
		url!: string
	})

	#network_profile: close({
		account_access?: matchN(1, [_#defs."/$defs/network_profile/$defs/account_access", list.MaxItems(1) & [..._#defs."/$defs/network_profile/$defs/account_access"]])
		node_management_access?: matchN(1, [_#defs."/$defs/network_profile/$defs/node_management_access", list.MaxItems(1) & [..._#defs."/$defs/network_profile/$defs/node_management_access"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/network_profile/$defs/account_access": close({
		ip_rule?: matchN(1, [_#defs."/$defs/network_profile/$defs/account_access/$defs/ip_rule", [..._#defs."/$defs/network_profile/$defs/account_access/$defs/ip_rule"]])
		default_action?: string
	})

	_#defs: "/$defs/network_profile/$defs/account_access/$defs/ip_rule": close({
		action?:   string
		ip_range!: string
	})

	_#defs: "/$defs/network_profile/$defs/node_management_access": close({
		ip_rule?: matchN(1, [_#defs."/$defs/network_profile/$defs/node_management_access/$defs/ip_rule", [..._#defs."/$defs/network_profile/$defs/node_management_access/$defs/ip_rule"]])
		default_action?: string
	})

	_#defs: "/$defs/network_profile/$defs/node_management_access/$defs/ip_rule": close({
		action?:   string
		ip_range!: string
	})
}
