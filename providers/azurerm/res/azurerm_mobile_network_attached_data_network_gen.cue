package res

import "list"

#azurerm_mobile_network_attached_data_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mobile_network_attached_data_network")
	close({
		dns_addresses!: [...string]
		id?:                                       string
		location!:                                 string
		mobile_network_data_network_name!:         string
		mobile_network_packet_core_data_plane_id!: string
		tags?: [string]: string
		network_address_port_translation?: matchN(1, [#network_address_port_translation, list.MaxItems(1) & [...#network_address_port_translation]])
		user_equipment_address_pool_prefixes?: [...string]
		timeouts?: #timeouts
		user_equipment_static_address_pool_prefixes?: [...string]
		user_plane_access_ipv4_address?: string
		user_plane_access_ipv4_gateway?: string
		user_plane_access_ipv4_subnet?:  string
		user_plane_access_name?:         string
	})

	#network_address_port_translation: close({
		port_range?: matchN(1, [_#defs."/$defs/network_address_port_translation/$defs/port_range", list.MaxItems(1) & [..._#defs."/$defs/network_address_port_translation/$defs/port_range"]])
		icmp_pinhole_timeout_in_seconds?:             number
		pinhole_maximum_number?:                      number
		tcp_pinhole_timeout_in_seconds?:              number
		tcp_port_reuse_minimum_hold_time_in_seconds?: number
		udp_pinhole_timeout_in_seconds?:              number
		udp_port_reuse_minimum_hold_time_in_seconds?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/network_address_port_translation/$defs/port_range": close({
		maximum?: number
		minimum?: number
	})
}
