package res

import "list"

#azurerm_vpn_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_vpn_gateway")
	close({
		bgp_route_translation_for_nat_enabled?: bool
		id?:                                    string
		ip_configuration?: [...close({
			id?:                 string
			private_ip_address?: string
			public_ip_address?:  string
		})]
		location!:            string
		name!:                string
		resource_group_name!: string
		routing_preference?:  string
		bgp_settings?: matchN(1, [#bgp_settings, list.MaxItems(1) & [...#bgp_settings]])
		scale_unit?: number
		timeouts?:   #timeouts
		tags?: [string]: string
		virtual_hub_id!: string
	})

	#bgp_settings: close({
		instance_0_bgp_peering_address?: matchN(1, [_#defs."/$defs/bgp_settings/$defs/instance_0_bgp_peering_address", list.MaxItems(1) & [..._#defs."/$defs/bgp_settings/$defs/instance_0_bgp_peering_address"]])
		instance_1_bgp_peering_address?: matchN(1, [_#defs."/$defs/bgp_settings/$defs/instance_1_bgp_peering_address", list.MaxItems(1) & [..._#defs."/$defs/bgp_settings/$defs/instance_1_bgp_peering_address"]])
		asn!:                 number
		bgp_peering_address?: string
		peer_weight!:         number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/bgp_settings/$defs/instance_0_bgp_peering_address": close({
		custom_ips!: [...string]
		default_ips?: [...string]
		ip_configuration_id?: string
		tunnel_ips?: [...string]
	})

	_#defs: "/$defs/bgp_settings/$defs/instance_1_bgp_peering_address": close({
		custom_ips!: [...string]
		default_ips?: [...string]
		ip_configuration_id?: string
		tunnel_ips?: [...string]
	})
}
