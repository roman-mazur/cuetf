package data

#azurerm_virtual_hub_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_virtual_hub_connection")
	close({
		timeouts?:                  #timeouts
		id?:                        string
		internet_security_enabled?: bool
		name!:                      string
		remote_virtual_network_id?: string
		resource_group_name!:       string
		routing?: [...close({
			associated_route_table_id?: string
			inbound_route_map_id?:      string
			outbound_route_map_id?:     string
			propagated_route_table?: [...close({
				labels?: [...string]
				route_table_ids?: [...string]
			})]
			static_vnet_local_route_override_criteria?:   string
			static_vnet_propagate_static_routes_enabled?: bool
			static_vnet_route?: [...close({
				address_prefixes?: [...string]
				name?:                string
				next_hop_ip_address?: string
			})]
		})]
		virtual_hub_id?:   string
		virtual_hub_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
