package res

#azurerm_virtual_hub_route_table_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_virtual_hub_route_table_route")
	close({
		timeouts?: #timeouts
		destinations!: [...string]
		destinations_type!: string
		id?:                string
		name!:              string
		next_hop!:          string
		next_hop_type?:     string
		route_table_id!:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
