package res

#azurerm_express_route_circuit_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_express_route_circuit_connection")
	close({
		timeouts?:            #timeouts
		address_prefix_ipv4!: string
		address_prefix_ipv6?: string
		authorization_key?:   string
		id?:                  string
		name!:                string
		peer_peering_id!:     string
		peering_id!:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
