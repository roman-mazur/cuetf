package res

import "list"

#azurerm_express_route_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_express_route_connection")
	close({
		routing?: matchN(1, [#routing, list.MaxItems(1) & [...#routing]])
		authorization_key?:                    string
		enable_internet_security?:             bool
		express_route_circuit_peering_id!:     string
		express_route_gateway_bypass_enabled?: bool
		express_route_gateway_id!:             string
		id?:                                   string
		name!:                                 string
		routing_weight?:                       number
		timeouts?:                             #timeouts
	})

	#routing: close({
		propagated_route_table?: matchN(1, [_#defs."/$defs/routing/$defs/propagated_route_table", list.MaxItems(1) & [..._#defs."/$defs/routing/$defs/propagated_route_table"]])
		associated_route_table_id?: string
		inbound_route_map_id?:      string
		outbound_route_map_id?:     string
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
}
