package res

#azurerm_virtual_hub: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_virtual_hub")
	close({
		address_prefix?:                   string
		branch_to_branch_traffic_enabled?: bool
		default_route_table_id?:           string
		hub_routing_preference?:           string
		id?:                               string
		location!:                         string
		name!:                             string
		resource_group_name!:              string
		route?: matchN(1, [#route, [...#route]])
		sku?: string
		tags?: [string]: string
		virtual_router_asn?:                     number
		timeouts?:                               #timeouts
		virtual_router_auto_scale_min_capacity?: number
		virtual_router_ips?: [...string]
		virtual_wan_id?: string
	})

	#route: close({
		address_prefixes!: [...string]
		next_hop_ip_address!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
