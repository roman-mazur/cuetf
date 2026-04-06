package data

#azurerm_oracle_db_nodes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_oracle_db_nodes")
	close({
		timeouts?:            #timeouts
		cloud_vm_cluster_id!: string
		db_nodes?: [...close({
			additional_details?:            string
			backup_ip_id?:                  string
			backup_vnic_2_id?:              string
			backup_vnic_id?:                string
			cpu_core_count?:                number
			db_node_storage_size_in_gbs?:   number
			db_server_id?:                  string
			db_system_id?:                  string
			fault_domain?:                  string
			host_ip_id?:                    string
			hostname?:                      string
			lifecycle_details?:             string
			lifecycle_state?:               string
			maintenance_type?:              string
			memory_size_in_gbs?:            number
			ocid?:                          string
			software_storage_size_in_gb?:   number
			time_created?:                  string
			time_maintenance_window_end?:   string
			time_maintenance_window_start?: string
			vnic_2_id?:                     string
			vnic_id?:                       string
		})]
		id?: string
	})

	#timeouts: close({
		read?: string
	})
}
