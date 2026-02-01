package data

#google_oracle_database_autonomous_databases: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_oracle_database_autonomous_databases")
	close({
		autonomous_databases?: [...close({
			admin_password?:         string
			autonomous_database_id?: string
			cidr?:                   string
			create_time?:            string
			database?:               string
			deletion_protection?:    bool
			disaster_recovery_supported_locations?: [...string]
			display_name?: string
			effective_labels?: [string]: string
			entitlement_id?: string
			labels?: [string]: string
			location?:    string
			name?:        string
			network?:     string
			odb_network?: string
			odb_subnet?:  string
			peer_autonomous_databases?: [...string]
			project?: string
			properties?: [...close({
				actual_used_data_storage_size_tb?: number
				allocated_storage_size_tb?:        number
				apex_details?: [...close({
					apex_version?: string
					ords_version?: string
				})]
				are_primary_allowlisted_ips_used?: bool
				autonomous_container_database_id?: string
				available_upgrade_versions?: [...string]
				backup_retention_period_days?: number
				character_set?:                string
				compute_count?:                number
				connection_strings?: [...close({
					all_connection_strings?: [...close({
						high?:   string
						low?:    string
						medium?: string
					})]
					dedicated?: string
					high?:      string
					low?:       string
					medium?:    string
					profiles?: [...close({
						consumer_group?:     string
						display_name?:       string
						host_format?:        string
						is_regional?:        bool
						protocol?:           string
						session_mode?:       string
						syntax_format?:      string
						tls_authentication?: string
						value?:              string
					})]
				})]
				connection_urls?: [...close({
					apex_uri?:                             string
					database_transforms_uri?:              string
					graph_studio_uri?:                     string
					machine_learning_notebook_uri?:        string
					machine_learning_user_management_uri?: string
					mongo_db_uri?:                         string
					ords_uri?:                             string
					sql_dev_web_uri?:                      string
				})]
				cpu_core_count?: number
				customer_contacts?: [...close({
					email?: string
				})]
				data_safe_state?:                             string
				data_storage_size_gb?:                        number
				data_storage_size_tb?:                        number
				database_management_state?:                   string
				db_edition?:                                  string
				db_version?:                                  string
				db_workload?:                                 string
				failed_data_recovery_duration?:               string
				is_auto_scaling_enabled?:                     bool
				is_local_data_guard_enabled?:                 bool
				is_storage_auto_scaling_enabled?:             bool
				license_type?:                                string
				lifecycle_details?:                           string
				local_adg_auto_failover_max_data_loss_limit?: number
				local_disaster_recovery_type?:                string
				local_standby_db?: [...close({
					data_guard_role_changed_time?:        string
					disaster_recovery_role_changed_time?: string
					lag_time_duration?:                   string
					lifecycle_details?:                   string
					state?:                               string
				})]
				maintenance_begin_time?:             string
				maintenance_end_time?:               string
				maintenance_schedule_type?:          string
				memory_per_oracle_compute_unit_gbs?: number
				memory_table_gbs?:                   number
				mtls_connection_required?:           bool
				n_character_set?:                    string
				next_long_term_backup_time?:         string
				oci_url?:                            string
				ocid?:                               string
				open_mode?:                          string
				operations_insights_state?:          string
				peer_db_ids?: [...string]
				permission_level?:       string
				private_endpoint?:       string
				private_endpoint_ip?:    string
				private_endpoint_label?: string
				refreshable_mode?:       string
				refreshable_state?:      string
				role?:                   string
				scheduled_operation_details?: [...close({
					day_of_week?: string
					start_time?: [...close({
						hours?:   number
						minutes?: number
						nanos?:   number
						seconds?: number
					})]
					stop_time?: [...close({
						hours?:   number
						minutes?: number
						nanos?:   number
						seconds?: number
					})]
				})]
				secret_id?:             string
				sql_web_developer_url?: string
				state?:                 string
				supported_clone_regions?: [...string]
				total_auto_backup_storage_size_gbs?: number
				used_data_storage_size_tbs?:         number
				vault_id?:                           string
			})]
			source_config?: [...close({
				automatic_backups_replication_enabled?: bool
				autonomous_database?:                   string
			})]
			terraform_labels?: [string]: string
		})]
		id?: string

		// location
		location!: string

		// The ID of the project in which the dataset is located. If it is
		// not provided, the provider project is used.
		project?: string
	})
}
