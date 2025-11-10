package res

import "list"

#azurerm_network_manager_connectivity_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_network_manager_connectivity_configuration")
	close({
		connectivity_topology!: string
		applies_to_group!: matchN(1, [#applies_to_group, [_, ...] & [...#applies_to_group]])
		delete_existing_peering_enabled?: bool
		description?:                     string
		global_mesh_enabled?:             bool
		id?:                              string
		name!:                            string
		network_manager_id!:              string
		hub?: matchN(1, [#hub, list.MaxItems(1) & [...#hub]])
		timeouts?: #timeouts
	})

	#applies_to_group: close({
		global_mesh_enabled?: bool
		group_connectivity!:  string
		network_group_id!:    string
		use_hub_gateway?:     bool
	})

	#hub: close({
		resource_id!:   string
		resource_type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
