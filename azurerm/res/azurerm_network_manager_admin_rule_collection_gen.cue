package res

#azurerm_network_manager_admin_rule_collection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_network_manager_admin_rule_collection")
	close({
		timeouts?:    #timeouts
		description?: string
		id?:          string
		name!:        string
		network_group_ids!: [...string]
		security_admin_configuration_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
