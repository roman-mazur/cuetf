package res

import "list"

#azurerm_servicebus_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_servicebus_namespace")
	close({
		capacity?:                            number
		default_primary_connection_string?:   string
		default_primary_key?:                 string
		default_secondary_connection_string?: string
		default_secondary_key?:               string
		endpoint?:                            string
		id?:                                  string
		local_auth_enabled?:                  bool
		location!:                            string
		minimum_tls_version?:                 string
		customer_managed_key?: matchN(1, [#customer_managed_key, list.MaxItems(1) & [...#customer_managed_key]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		network_rule_set?: matchN(1, [#network_rule_set, list.MaxItems(1) & [...#network_rule_set]])
		name!:                          string
		premium_messaging_partitions?:  number
		public_network_access_enabled?: bool
		resource_group_name!:           string
		sku!:                           string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#customer_managed_key: close({
		identity_id!:                       string
		infrastructure_encryption_enabled?: bool
		key_vault_key_id!:                  string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#network_rule_set: close({
		network_rules?: matchN(1, [_#defs."/$defs/network_rule_set/$defs/network_rules", [..._#defs."/$defs/network_rule_set/$defs/network_rules"]])
		default_action?: string
		ip_rules?: [...string]
		public_network_access_enabled?: bool
		trusted_services_allowed?:      bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/network_rule_set/$defs/network_rules": close({
		ignore_missing_vnet_service_endpoint?: bool
		subnet_id!:                            string
	})
}
