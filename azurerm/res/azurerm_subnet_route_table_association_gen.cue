package res

#azurerm_subnet_route_table_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_subnet_route_table_association")
	close({
		timeouts?:       #timeouts
		id?:             string
		route_table_id!: string
		subnet_id!:      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
