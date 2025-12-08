package res

#azurerm_virtual_hub_route_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_virtual_hub_route_table")
	close({
		route?: matchN(1, [#route, [...#route]])
		id?: string
		labels?: [...string]
		name!:           string
		virtual_hub_id!: string
		timeouts?:       #timeouts
	})

	#route: close({
		destinations!: [...string]
		destinations_type!: string
		name!:              string
		next_hop!:          string
		next_hop_type?:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
