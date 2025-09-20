package data

#azurerm_oracle_exadata_infrastructure: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_oracle_exadata_infrastructure")
	close({
		activated_storage_count?:       number
		additional_storage_count?:      number
		available_storage_size_in_gbs?: number
		compute_count?:                 number
		compute_model?:                 string
		cpu_count?:                     number
		customer_contacts?: [...string]
		data_storage_size_in_tbs?:    number
		database_server_type?:        string
		db_node_storage_size_in_gbs?: number
		db_server_version?:           string
		defined_file_system_configuration?: [...close({
			backup_partition_enabled?: bool
			minimum_size_in_gb?:       number
			mount_point?:              string
			resizable_enabled?:        bool
		})]
		display_name?: string
		estimated_patching_time?: [...close({
			estimated_db_server_patching_time?:        number
			estimated_network_switches_patching_time?: number
			estimated_storage_server_patching_time?:   number
			total_estimated_patching_time?:            number
		})]
		id?:                      string
		last_maintenance_run_id?: string
		lifecycle_details?:       string
		lifecycle_state?:         string
		location?:                string
		maintenance_window?: [...close({
			custom_action_timeout_enabled?: bool
			custom_action_timeout_in_mins?: number
			days_of_week?: [...string]
			hours_of_day?: [...number]
			lead_time_in_weeks?:       number
			monthly_patching_enabled?: bool
			months?: [...string]
			patching_mode?: string
			preference?:    string
			weeks_of_month?: [...number]
		})]
		max_cpu_count?:                   number
		timeouts?:                        #timeouts
		max_data_storage_in_tbs?:         number
		max_db_node_storage_size_in_gbs?: number
		max_memory_in_gbs?:               number
		memory_size_in_gbs?:              number
		monthly_db_server_version?:       string
		monthly_storage_server_version?:  string
		name!:                            string
		next_maintenance_run_id?:         string
		oci_url?:                         string
		ocid?:                            string
		resource_group_name!:             string
		shape?:                           string
		storage_count?:                   number
		storage_server_type?:             string
		storage_server_version?:          string
		tags?: [string]: string
		time_created?:              string
		total_storage_size_in_gbs?: number
		zones?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
