package res

#azurerm_virtual_network_peering: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_virtual_network_peering")
	close({
		allow_forwarded_traffic?:      bool
		allow_gateway_transit?:        bool
		allow_virtual_network_access?: bool
		id?:                           string
		local_subnet_names?: [...string]
		name!:                                   string
		only_ipv6_peering_enabled?:              bool
		peer_complete_virtual_networks_enabled?: bool
		remote_subnet_names?: [...string]
		remote_virtual_network_id!: string
		resource_group_name!:       string
		triggers?: [string]: string
		timeouts?:             #timeouts
		use_remote_gateways?:  bool
		virtual_network_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
