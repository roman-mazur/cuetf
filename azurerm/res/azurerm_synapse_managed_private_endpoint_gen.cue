package res

#azurerm_synapse_managed_private_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_synapse_managed_private_endpoint")
	close({
		timeouts?:             #timeouts
		id?:                   string
		name!:                 string
		subresource_name!:     string
		synapse_workspace_id!: string
		target_resource_id!:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
