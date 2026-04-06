package res

#azurerm_synapse_integration_runtime_self_hosted: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_synapse_integration_runtime_self_hosted")
	close({
		timeouts?:                    #timeouts
		authorization_key_primary?:   string
		authorization_key_secondary?: string
		description?:                 string
		id?:                          string
		name!:                        string
		synapse_workspace_id!:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
