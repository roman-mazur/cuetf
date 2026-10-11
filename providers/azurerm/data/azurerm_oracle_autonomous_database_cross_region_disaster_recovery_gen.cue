package data

azurerm_oracle_autonomous_database_cross_region_disaster_recovery: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_oracle_autonomous_database_cross_region_disaster_recovery")
	close({
		timeouts?:                            #timeouts
		actual_used_data_storage_size_in_tb?: number
		allocated_storage_size_in_tb?:        number
		auto_scaling_enabled?:                bool
		auto_scaling_for_storage_enabled?:    bool
		available_upgrade_versions?: [...string]
		backup_retention_period_in_days?: number
		character_set?:                   string
		compute_count?:                   number
		cpu_core_count?:                  number
		customer_contacts?: [...string]
		data_storage_size_in_gb?:                                    number
		data_storage_size_in_tb?:                                    number
		database_type?:                                              string
		database_version?:                                           string
		database_workload?:                                          string
		display_name?:                                               string
		failed_data_recovery_in_seconds?:                            number
		id?:                                                         string
		in_memory_area_in_gb?:                                       number
		license_model?:                                              string
		lifecycle_details?:                                          string
		local_adg_auto_failover_maximum_data_loss_limit_in_seconds?: number
		local_data_guard_enabled?:                                   bool
		location?:                                                   string
		memory_per_oracle_compute_unit_in_gb?:                       number
		mtls_connection_required?:                                   bool
		name!:                                                       string
		national_character_set?:                                     string
		next_long_term_backup_timestamp_in_utc?:                     string
		oci_url?:                                                    string
		ocid?:                                                       string
		peer_database_ids?: [...string]
		preview?:                                     bool
		preview_version_with_service_terms_accepted?: bool
		private_endpoint_ip?:                         string
		private_endpoint_label?:                      string
		private_endpoint_url?:                        string
		provisionable_cpus?: [...number]
		remote_data_guard_enabled?:           bool
		remote_disaster_recovery_type?:       string
		replicate_automatic_backups_enabled?: bool
		resource_group_name!:                 string
		service_console_url?:                 string
		source_autonomous_database_id?:       string
		source_location?:                     string
		source_ocid?:                         string
		source_type?:                         string
		sql_web_developer_url?:               string
		subnet_id?:                           string
		tags?: [string]: string
		time_created_in_utc?:                                 string
		time_data_guard_role_changed_in_utc?:                 string
		time_deletion_of_free_autonomous_database_in_utc?:    string
		time_local_data_guard_enabled_in_utc?:                string
		time_maintenance_begin_in_utc?:                       string
		time_maintenance_end_in_utc?:                         string
		time_of_last_failover_in_utc?:                        string
		time_of_last_refresh_in_utc?:                         string
		time_of_last_refresh_point_in_utc?:                   string
		time_of_last_switchover_in_utc?:                      string
		time_reclamation_of_free_autonomous_database_in_utc?: string
		used_data_storage_size_in_gb?:                        number
		used_data_storage_size_in_tb?:                        number
		virtual_network_id?:                                  string
	})

	#timeouts: close({
		read?: string
	})
}
