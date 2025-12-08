package res

import "list"

#azurerm_vpn_gateway_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_vpn_gateway_connection")
	close({
		id?:                        string
		internet_security_enabled?: bool
		name!:                      string
		remote_vpn_site_id!:        string
		vpn_gateway_id!:            string
		routing?: matchN(1, [#routing, list.MaxItems(1) & [...#routing]])
		timeouts?: #timeouts
		traffic_selector_policy?: matchN(1, [#traffic_selector_policy, [...#traffic_selector_policy]])
		vpn_link!: matchN(1, [#vpn_link, [_, ...] & [...#vpn_link]])
	})

	#routing: close({
		propagated_route_table?: matchN(1, [_#defs."/$defs/routing/$defs/propagated_route_table", list.MaxItems(1) & [..._#defs."/$defs/routing/$defs/propagated_route_table"]])
		associated_route_table!: string
		inbound_route_map_id?:   string
		outbound_route_map_id?:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#traffic_selector_policy: close({
		local_address_ranges!: [...string]
		remote_address_ranges!: [...string]
	})

	#vpn_link: close({
		bandwidth_mbps?:      number
		bgp_enabled?:         bool
		connection_mode?:     string
		dpd_timeout_seconds?: number
		egress_nat_rule_ids?: [...string]
		ingress_nat_rule_ids?: [...string]
		local_azure_ip_address_enabled?: bool
		name!:                           string
		custom_bgp_address?: matchN(1, [_#defs."/$defs/vpn_link/$defs/custom_bgp_address", [..._#defs."/$defs/vpn_link/$defs/custom_bgp_address"]])
		policy_based_traffic_selector_enabled?: bool
		protocol?:                              string
		ratelimit_enabled?:                     bool
		ipsec_policy?: matchN(1, [_#defs."/$defs/vpn_link/$defs/ipsec_policy", [..._#defs."/$defs/vpn_link/$defs/ipsec_policy"]])
		route_weight?:     number
		shared_key?:       string
		vpn_site_link_id!: string
	})

	_#defs: "/$defs/routing/$defs/propagated_route_table": close({
		labels?: [...string]
		route_table_ids!: [...string]
	})

	_#defs: "/$defs/vpn_link/$defs/custom_bgp_address": close({
		ip_address!:          string
		ip_configuration_id!: string
	})

	_#defs: "/$defs/vpn_link/$defs/ipsec_policy": close({
		dh_group!:                 string
		encryption_algorithm!:     string
		ike_encryption_algorithm!: string
		ike_integrity_algorithm!:  string
		integrity_algorithm!:      string
		pfs_group!:                string
		sa_data_size_kb!:          number
		sa_lifetime_sec!:          number
	})
}
