package res

#azurerm_route_server_bgp_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_route_server_bgp_connection")
	close({
		timeouts?:        #timeouts
		id?:              string
		name!:            string
		peer_asn!:        number
		peer_ip!:         string
		route_server_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
