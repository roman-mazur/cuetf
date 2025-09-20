package res

#azurerm_network_manager_routing_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_network_manager_routing_configuration")
	close({
		timeouts?:           #timeouts
		description?:        string
		id?:                 string
		name!:               string
		network_manager_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
