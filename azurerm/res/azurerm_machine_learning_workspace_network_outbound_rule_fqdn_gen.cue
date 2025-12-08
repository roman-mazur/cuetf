package res

#azurerm_machine_learning_workspace_network_outbound_rule_fqdn: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_machine_learning_workspace_network_outbound_rule_fqdn")
	close({
		timeouts?:         #timeouts
		destination_fqdn!: string
		id?:               string
		name!:             string
		workspace_id!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
