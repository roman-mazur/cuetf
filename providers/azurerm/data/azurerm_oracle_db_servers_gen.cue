package data

#azurerm_oracle_db_servers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_oracle_db_servers")
	close({
		timeouts?:                          #timeouts
		cloud_exadata_infrastructure_name!: string
		db_servers?: [...close({
			autonomous_virtual_machine_ds?: [...string]
			autonomous_vm_cluster_ids?: [...string]
			compartment_id?: string
			compute_model?:  string
			cpu_core_count?: number
			db_node_ids?: [...string]
			db_node_storage_size_in_gbs?: number
			display_name?:                string
			exadata_infrastructure_id?:   string
			lifecycle_details?:           string
			lifecycle_state?:             string
			max_cpu_count?:               number
			max_db_node_storage_in_gbs?:  number
			max_memory_in_gbs?:           number
			memory_size_in_gbs?:          number
			ocid?:                        string
			shape?:                       string
			time_created?:                string
			vm_cluster_ids?: [...string]
		})]
		id?:                  string
		resource_group_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
