package res

#azurerm_network_manager_verifier_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_network_manager_verifier_workspace")
	close({
		timeouts?:           #timeouts
		description?:        string
		id?:                 string
		location!:           string
		name!:               string
		network_manager_id!: string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
