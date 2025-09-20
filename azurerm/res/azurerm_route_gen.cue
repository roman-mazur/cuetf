package res

#azurerm_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_route")
	close({
		timeouts?:               #timeouts
		address_prefix!:         string
		id?:                     string
		name!:                   string
		next_hop_in_ip_address?: string
		next_hop_type!:          string
		resource_group_name!:    string
		route_table_name!:       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
