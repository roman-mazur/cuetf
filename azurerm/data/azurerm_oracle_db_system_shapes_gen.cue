package data

#azurerm_oracle_db_system_shapes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_oracle_db_system_shapes")
	close({
		db_system_shapes?: [...close({
			are_server_types_supported?:               bool
			available_core_count?:                     number
			available_core_count_per_node?:            number
			available_data_storage_in_tbs?:            number
			available_data_storage_per_server_in_tbs?: number
			available_db_node_per_node_in_gbs?:        number
			available_db_node_storage_in_gbs?:         number
			available_memory_in_gbs?:                  number
			available_memory_per_node_in_gbs?:         number
			compute_model?:                            string
			core_count_increment?:                     number
			display_name?:                             string
			maximum_node_count?:                       number
			maximum_storage_count?:                    number
			minimum_core_count?:                       number
			minimum_core_count_per_node?:              number
			minimum_data_storage_in_tbs?:              number
			minimum_db_node_storage_per_node_in_gbs?:  number
			minimum_memory_per_node_in_gbs?:           number
			minimum_node_count?:                       number
			minimum_storage_count?:                    number
			runtime_minimum_core_count?:               number
			shape_family?:                             string
		})]

		// Filter the versions by zone
		zone?:     string
		id?:       string
		location!: string
		timeouts?: #timeouts
	})

	#timeouts: close({
		read?: string
	})
}
