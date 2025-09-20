package res

#azurerm_machine_learning_workspace_network_outbound_rule_private_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_machine_learning_workspace_network_outbound_rule_private_endpoint")
	close({
		timeouts?:            #timeouts
		id?:                  string
		name!:                string
		service_resource_id!: string
		spark_enabled?:       bool
		sub_resource_target!: string
		workspace_id!:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
