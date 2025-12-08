package res

#azurerm_network_manager_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_network_manager_deployment")
	close({
		timeouts?: #timeouts
		configuration_ids!: [...string]
		id?:                 string
		location!:           string
		network_manager_id!: string
		scope_access!:       string
		triggers?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
