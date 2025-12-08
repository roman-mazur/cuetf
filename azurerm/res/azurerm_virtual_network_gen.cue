package res

import "list"

#azurerm_virtual_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_virtual_network")
	close({
		address_space?: [...string]
		bgp_community?: string
		dns_servers?: [...string]
		edge_zone?:               string
		flow_timeout_in_minutes?: number
		guid?:                    string
		id?:                      string
		location!:                string
		name!:                    string
		ddos_protection_plan?: matchN(1, [#ddos_protection_plan, list.MaxItems(1) & [...#ddos_protection_plan]])
		private_endpoint_vnet_policies?: string
		resource_group_name!:            string
		subnet?: [...close({
			address_prefixes?: [...string]
			default_outbound_access_enabled?: bool
			delegation?: [...close({
				name?: string
				service_delegation?: [...close({
					actions?: [...string]
					name?: string
				})]
			})]
			id?:                                            string
			name?:                                          string
			private_endpoint_network_policies?:             string
			private_link_service_network_policies_enabled?: bool
			route_table_id?:                                string
			security_group?:                                string
			service_endpoint_policy_ids?: [...string]
			service_endpoints?: [...string]
		})]
		tags?: [string]: string
		encryption?: matchN(1, [#encryption, list.MaxItems(1) & [...#encryption]])
		ip_address_pool?: matchN(1, [#ip_address_pool, list.MaxItems(2) & [...#ip_address_pool]])
		timeouts?: #timeouts
	})

	#ddos_protection_plan: close({
		enable!: bool
		id!:     string
	})

	#encryption: close({
		enforcement!: string
	})

	#ip_address_pool: close({
		allocated_ip_address_prefixes?: [...string]
		id!:                     string
		number_of_ip_addresses!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
