package res

import "list"

#azurerm_eventhub_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_eventhub_namespace")
	close({
		auto_inflate_enabled?: bool
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		capacity?:                                  number
		dedicated_cluster_id?:                      string
		default_primary_connection_string?:         string
		default_primary_connection_string_alias?:   string
		timeouts?:                                  #timeouts
		default_primary_key?:                       string
		default_secondary_connection_string?:       string
		default_secondary_connection_string_alias?: string
		default_secondary_key?:                     string
		id?:                                        string
		local_authentication_enabled?:              bool
		location!:                                  string
		maximum_throughput_units?:                  number
		minimum_tls_version?:                       string
		name!:                                      string
		network_rulesets?: [...close({
			default_action?: string
			ip_rule?: [...close({
				action?:  string
				ip_mask?: string
			})]
			public_network_access_enabled?:  bool
			trusted_service_access_enabled?: bool
			virtual_network_rule?: [...close({
				ignore_missing_virtual_network_service_endpoint?: bool
				subnet_id?:                                       string
			})]
		})]
		public_network_access_enabled?: bool
		resource_group_name!:           string
		sku!:                           string
		tags?: [string]: string
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
