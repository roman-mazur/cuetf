package data

#azurerm_virtual_network_peering: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_virtual_network_peering")
	close({
		allow_forwarded_traffic?:                bool
		allow_gateway_transit?:                  bool
		allow_virtual_network_access?:           bool
		id?:                                     string
		name!:                                   string
		only_ipv6_peering_enabled?:              bool
		peer_complete_virtual_networks_enabled?: bool
		timeouts?:                               #timeouts
		remote_virtual_network_id?:              string
		use_remote_gateways?:                    bool
		virtual_network_id!:                     string
	})

	#timeouts: close({
		read?: string
	})
}
