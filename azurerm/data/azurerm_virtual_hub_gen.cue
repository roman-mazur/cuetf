package data

#azurerm_virtual_hub: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_virtual_hub")
	close({
		address_prefix?:         string
		default_route_table_id?: string
		id?:                     string
		location?:               string
		name!:                   string
		resource_group_name!:    string
		tags?: [string]: string
		timeouts?:           #timeouts
		virtual_router_asn?: number
		virtual_router_ips?: [...string]
		virtual_wan_id?: string
	})

	#timeouts: close({
		read?: string
	})
}
