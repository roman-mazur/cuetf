package res

#azurerm_network_manager_routing_rule_collection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_network_manager_routing_rule_collection")
	close({
		timeouts?:                      #timeouts
		bgp_route_propagation_enabled?: bool
		description?:                   string
		id?:                            string
		name!:                          string
		network_group_ids!: [...string]
		routing_configuration_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
