package res

import "list"

#azurerm_virtual_hub_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_virtual_hub_connection")
	close({
		routing?: matchN(1, [#routing, list.MaxItems(1) & [...#routing]])
		id?:                        string
		internet_security_enabled?: bool
		name!:                      string
		remote_virtual_network_id!: string
		virtual_hub_id!:            string
		timeouts?:                  #timeouts
	})

	#routing: close({
		propagated_route_table?: matchN(1, [_#defs."/$defs/routing/$defs/propagated_route_table", list.MaxItems(1) & [..._#defs."/$defs/routing/$defs/propagated_route_table"]])
		associated_route_table_id?:                   string
		inbound_route_map_id?:                        string
		outbound_route_map_id?:                       string
		static_vnet_local_route_override_criteria?:   string
		static_vnet_propagate_static_routes_enabled?: bool
		static_vnet_route?: matchN(1, [_#defs."/$defs/routing/$defs/static_vnet_route", [..._#defs."/$defs/routing/$defs/static_vnet_route"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/routing/$defs/propagated_route_table": close({
		labels?: [...string]
		route_table_ids?: [...string]
	})

	_#defs: "/$defs/routing/$defs/static_vnet_route": close({
		address_prefixes?: [...string]
		name?:                string
		next_hop_ip_address?: string
	})
}
