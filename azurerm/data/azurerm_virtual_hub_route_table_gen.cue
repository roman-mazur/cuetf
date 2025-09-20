package data

#azurerm_virtual_hub_route_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_virtual_hub_route_table")
	close({
		timeouts?: #timeouts
		id?:       string
		labels?: [...string]
		name!:                string
		resource_group_name!: string
		route?: [...close({
			destinations?: [...string]
			destinations_type?: string
			name?:              string
			next_hop?:          string
			next_hop_type?:     string
		})]
		virtual_hub_id?:   string
		virtual_hub_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
