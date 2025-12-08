package res

import "list"

#azurerm_container_registry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_container_registry")
	close({
		admin_enabled?:          bool
		admin_password?:         string
		admin_username?:         string
		anonymous_pull_enabled?: bool
		data_endpoint_enabled?:  bool
		data_endpoint_host_names?: [...string]
		encryption?: [...close({
			identity_client_id?: string
			key_vault_key_id?:   string
		})]
		export_policy_enabled?: bool
		id?:                    string
		location!:              string
		login_server?:          string
		name!:                  string
		georeplications?: matchN(1, [#georeplications, [...#georeplications]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		network_rule_bypass_option?: string
		network_rule_set?: [...close({
			default_action?: string
			ip_rule?: [...close({
				action?:   string
				ip_range?: string
			})]
		})]
		public_network_access_enabled?: bool
		quarantine_policy_enabled?:     bool
		timeouts?:                      #timeouts
		resource_group_name!:           string
		retention_policy_in_days?:      number
		sku!:                           string
		tags?: [string]: string
		trust_policy_enabled?:    bool
		zone_redundancy_enabled?: bool
	})

	#georeplications: close({
		location!:                  string
		regional_endpoint_enabled?: bool
		tags?: [string]: string
		zone_redundancy_enabled?: bool
	})

	#identity: close({
		identity_ids?: [...string]
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
