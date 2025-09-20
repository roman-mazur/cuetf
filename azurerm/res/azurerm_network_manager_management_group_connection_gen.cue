package res

#azurerm_network_manager_management_group_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_network_manager_management_group_connection")
	close({
		timeouts?:            #timeouts
		connection_state?:    string
		description?:         string
		id?:                  string
		management_group_id!: string
		name!:                string
		network_manager_id!:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
