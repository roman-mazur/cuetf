package res

import "list"

#azurerm_virtual_network_gateway_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_virtual_network_gateway_connection")
	close({
		authorization_key?:   string
		connection_mode?:     string
		connection_protocol?: string
		dpd_timeout_seconds?: number
		egress_nat_rule_ids?: [...string]
		enable_bgp?:               bool
		express_route_circuit_id?: string
		custom_bgp_addresses?: matchN(1, [#custom_bgp_addresses, list.MaxItems(1) & [...#custom_bgp_addresses]])
		express_route_gateway_bypass?: bool
		id?:                           string
		ingress_nat_rule_ids?: [...string]
		local_azure_ip_address_enabled?: bool
		local_network_gateway_id?:       string
		ipsec_policy?: matchN(1, [#ipsec_policy, list.MaxItems(1) & [...#ipsec_policy]])
		location!:                        string
		name!:                            string
		peer_virtual_network_gateway_id?: string
		private_link_fast_path_enabled?:  bool
		resource_group_name!:             string
		routing_weight?:                  number
		shared_key?:                      string
		timeouts?:                        #timeouts
		tags?: [string]: string
		type!:                               string
		use_policy_based_traffic_selectors?: bool
		virtual_network_gateway_id!:         string
		traffic_selector_policy?: matchN(1, [#traffic_selector_policy, [...#traffic_selector_policy]])
	})

	#custom_bgp_addresses: close({
		primary!:   string
		secondary?: string
	})

	#ipsec_policy: close({
		dh_group!:         string
		ike_encryption!:   string
		ike_integrity!:    string
		ipsec_encryption!: string
		ipsec_integrity!:  string
		pfs_group!:        string
		sa_datasize?:      number
		sa_lifetime?:      number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#traffic_selector_policy: close({
		local_address_cidrs!: [...string]
		remote_address_cidrs!: [...string]
	})
}
