package res

#azurerm_machine_learning_workspace_network_outbound_rule_service_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_machine_learning_workspace_network_outbound_rule_service_tag")
	close({
		timeouts?:     #timeouts
		id?:           string
		name!:         string
		port_ranges!:  string
		protocol!:     string
		service_tag!:  string
		workspace_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
