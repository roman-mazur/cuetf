package res

#azurerm_synapse_integration_runtime_azure: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_synapse_integration_runtime_azure")
	close({
		timeouts?:             #timeouts
		compute_type?:         string
		core_count?:           number
		description?:          string
		id?:                   string
		location!:             string
		name!:                 string
		synapse_workspace_id!: string
		time_to_live_min?:     number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
