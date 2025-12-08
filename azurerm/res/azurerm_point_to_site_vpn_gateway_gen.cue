package res

import "list"

#azurerm_point_to_site_vpn_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_point_to_site_vpn_gateway")
	close({
		dns_servers?: [...string]
		id?:                                  string
		location!:                            string
		name!:                                string
		resource_group_name!:                 string
		routing_preference_internet_enabled?: bool
		scale_unit!:                          number
		connection_configuration!: matchN(1, [#connection_configuration, [_, ...] & [...#connection_configuration]])
		tags?: [string]: string
		timeouts?:                    #timeouts
		virtual_hub_id!:              string
		vpn_server_configuration_id!: string
	})

	#connection_configuration: close({
		route?: matchN(1, [_#defs."/$defs/connection_configuration/$defs/route", list.MaxItems(1) & [..._#defs."/$defs/connection_configuration/$defs/route"]])
		vpn_client_address_pool!: matchN(1, [_#defs."/$defs/connection_configuration/$defs/vpn_client_address_pool", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/connection_configuration/$defs/vpn_client_address_pool"]])
		internet_security_enabled?: bool
		name!:                      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/connection_configuration/$defs/route": close({
		propagated_route_table?: matchN(1, [_#defs."/$defs/connection_configuration/$defs/route/$defs/propagated_route_table", list.MaxItems(1) & [..._#defs."/$defs/connection_configuration/$defs/route/$defs/propagated_route_table"]])
		associated_route_table_id!: string
		inbound_route_map_id?:      string
		outbound_route_map_id?:     string
	})

	_#defs: "/$defs/connection_configuration/$defs/route/$defs/propagated_route_table": close({
		ids!: [...string]
		labels?: [...string]
	})

	_#defs: "/$defs/connection_configuration/$defs/vpn_client_address_pool": close({
		address_prefixes!: [...string]
	})
}
