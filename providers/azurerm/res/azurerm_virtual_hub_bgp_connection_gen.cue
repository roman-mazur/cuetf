package res

#azurerm_virtual_hub_bgp_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_virtual_hub_bgp_connection")
	close({
		timeouts?:                      #timeouts
		id?:                            string
		name!:                          string
		peer_asn!:                      number
		peer_ip!:                       string
		virtual_hub_id!:                string
		virtual_network_connection_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
