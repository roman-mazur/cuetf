package res

#azurerm_synapse_workspace_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_synapse_workspace_key")
	close({
		timeouts?:                            #timeouts
		active!:                              bool
		customer_managed_key_name!:           string
		customer_managed_key_versionless_id?: string
		id?:                                  string
		synapse_workspace_id!:                string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
