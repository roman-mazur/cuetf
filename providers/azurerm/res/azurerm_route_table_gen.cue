package res

#azurerm_route_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_route_table")
	close({
		timeouts?:                      #timeouts
		bgp_route_propagation_enabled?: bool
		id?:                            string
		location!:                      string
		name!:                          string
		resource_group_name!:           string
		route?: [...close({
			address_prefix?:         string
			name?:                   string
			next_hop_in_ip_address?: string
			next_hop_type?:          string
		})]
		subnets?: [...string]
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
