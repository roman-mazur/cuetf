package res

#azurerm_route_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_route_server")
	close({
		branch_to_branch_traffic_enabled?: bool
		hub_routing_preference?:           string
		id?:                               string
		location!:                         string
		name!:                             string
		public_ip_address_id!:             string
		resource_group_name!:              string
		routing_state?:                    string
		timeouts?:                         #timeouts
		sku!:                              string
		subnet_id!:                        string
		tags?: [string]: string
		virtual_router_asn?: number
		virtual_router_ips?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
