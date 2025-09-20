package data

#azurerm_oracle_autonomous_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_oracle_autonomous_database")
	close({
		actual_used_data_storage_size_in_tbs?: number
		allocated_storage_size_in_tbs?:        number
		allowed_ips?: [...number]
		auto_scaling_enabled?:             bool
		auto_scaling_for_storage_enabled?: bool
		autonomous_database_id?:           string
		available_upgrade_versions?: [...string]
		backup_retention_period_in_days?:             number
		character_set?:                               string
		compute_count?:                               number
		cpu_core_count?:                              number
		data_storage_size_in_gbs?:                    number
		data_storage_size_in_tbs?:                    number
		db_node_storage_size_in_gbs?:                 number
		db_version?:                                  string
		display_name?:                                string
		failed_data_recovery_in_seconds?:             number
		id?:                                          string
		in_memory_area_in_gbs?:                       number
		lifecycle_details?:                           string
		local_adg_auto_failover_max_data_loss_limit?: number
		local_data_guard_enabled?:                    bool
		location?:                                    string
		long_term_backup_schedule?: [...close({
			enabled?:                  bool
			repeat_cadence?:           string
			retention_period_in_days?: number
			time_of_backup?:           string
		})]
		memory_per_oracle_compute_unit_in_gbs?: number
		mtls_connection_required?:              bool
		name!:                                  string
		national_character_set?:                string
		next_long_term_backup_time_stamp?:      string
		oci_url?:                               string
		ocid?:                                  string
		peer_db_id?:                            string
		timeouts?:                              #timeouts
		peer_db_ids?: [...string]
		preview?:                                     bool
		preview_version_with_service_terms_accepted?: bool
		private_endpoint?:                            string
		private_endpoint_ip?:                         string
		private_endpoint_label?:                      string
		provisionable_cpus?: [...number]
		remote_data_guard_enabled?: bool
		resource_group_name!:       string
		service_console_url?:       string
		sql_web_developer_url?:     string
		subnet_id?:                 string
		supported_regions_to_clone_to?: [...string]
		tags?: [string]: string
		time_created?:                                 string
		time_data_guard_role_changed?:                 string
		time_deletion_of_free_autonomous_database?:    string
		time_local_data_guard_enabled_on?:             string
		time_maintenance_begin?:                       string
		time_maintenance_end?:                         string
		time_of_last_failover?:                        string
		time_of_last_refresh?:                         string
		time_of_last_refresh_point?:                   string
		time_of_last_switchover?:                      string
		time_reclamation_of_free_autonomous_database?: string
		used_data_storage_size_in_gbs?:                number
		used_data_storage_size_in_tbs?:                number
		virtual_network_id?:                           string
	})

	#timeouts: close({
		read?: string
	})
}
