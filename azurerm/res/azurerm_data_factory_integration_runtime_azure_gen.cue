package res

#azurerm_data_factory_integration_runtime_azure: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_factory_integration_runtime_azure")
	close({
		cleanup_enabled?:         bool
		compute_type?:            string
		core_count?:              number
		data_factory_id!:         string
		description?:             string
		id?:                      string
		location!:                string
		timeouts?:                #timeouts
		name!:                    string
		time_to_live_min?:        number
		virtual_network_enabled?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
