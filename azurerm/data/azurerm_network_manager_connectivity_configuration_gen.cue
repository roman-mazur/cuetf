package data

#azurerm_network_manager_connectivity_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_network_manager_connectivity_configuration")
	close({
		timeouts?: #timeouts
		applies_to_group?: [...close({
			global_mesh_enabled?: bool
			group_connectivity?:  string
			network_group_id?:    string
			use_hub_gateway?:     bool
		})]
		connectivity_topology?:           string
		delete_existing_peering_enabled?: bool
		description?:                     string
		global_mesh_enabled?:             bool
		hub?: [...close({
			resource_id?:   string
			resource_type?: string
		})]
		id?:                 string
		name!:               string
		network_manager_id!: string
	})

	#timeouts: close({
		read?: string
	})
}
