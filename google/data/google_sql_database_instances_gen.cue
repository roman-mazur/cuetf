package data

#google_sql_database_instances: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_sql_database_instances")
	close({
		// To filter out the database instances which are of the specified
		// database version.
		database_version?: string
		id?:               string
		instances?: [...close({
			available_maintenance_versions?: [...string]
			backupdr_backup?: string
			clone?: [...close({
				allocated_ip_range?: string
				database_names?: [...string]
				point_in_time?:                 string
				preferred_zone?:                string
				source_instance_deletion_time?: string
				source_instance_name?:          string
			})]
			connection_name?:     string
			database_version?:    string
			deletion_protection?: bool
			dns_name?:            string
			dns_names?: [...close({
				connection_type?: string
				dns_scope?:       string
				name?:            string
			})]
			encryption_key_name?:      string
			final_backup_description?: string
			first_ip_address?:         string
			instance_type?:            string
			ip_address?: [...close({
				ip_address?:     string
				time_to_retire?: string
				type?:           string
			})]
			maintenance_version?:  string
			master_instance_name?: string
			name?:                 string
			node_count?:           number
			point_in_time_restore_context?: [...close({
				allocated_ip_range?: string
				datasource?:         string
				point_in_time?:      string
				preferred_zone?:     string
				target_instance?:    string
			})]
			private_ip_address?:          string
			project?:                     string
			psc_service_attachment_link?: string
			public_ip_address?:           string
			region?:                      string
			replica_configuration?: [...close({
				ca_certificate?:            string
				cascadable_replica?:        bool
				client_certificate?:        string
				client_key?:                string
				connect_retry_interval?:    number
				dump_file_path?:            string
				failover_target?:           bool
				master_heartbeat_period?:   number
				password?:                  string
				ssl_cipher?:                string
				username?:                  string
				verify_server_certificate?: bool
			})]
			replica_names?: [...string]
			replication_cluster?: [...close({
				dr_replica?:               bool
				failover_dr_replica_name?: string
				psa_write_endpoint?:       string
			})]
			restore_backup_context?: [...close({
				backup_run_id?: number
				instance_id?:   string
				project?:       string
			})]
			root_password?:            string
			root_password_wo?:         string
			root_password_wo_version?: string
			self_link?:                string
			server_ca_cert?: [...close({
				cert?:             string
				common_name?:      string
				create_time?:      string
				expiration_time?:  string
				sha1_fingerprint?: string
			})]
			service_account_email_address?: string
			settings?: [...close({
				activation_policy?: string
				active_directory_config?: [...close({
					domain?: string
				})]
				advanced_machine_features?: [...close({
					threads_per_core?: number
				})]
				availability_type?: string
				backup_configuration?: [...close({
					backup_retention_settings?: [...close({
						retained_backups?: number
						retention_unit?:   string
					})]
					backup_tier?:                    string
					binary_log_enabled?:             bool
					enabled?:                        bool
					location?:                       string
					point_in_time_recovery_enabled?: bool
					start_time?:                     string
					transaction_log_retention_days?: number
				})]
				collation?: string
				connection_pool_config?: [...close({
					connection_pooling_enabled?: bool
					flags?: [...close({
						name?:  string
						value?: string
					})]
				})]
				connector_enforcement?: string
				data_cache_config?: [...close({
					data_cache_enabled?: bool
				})]
				database_flags?: [...close({
					name?:  string
					value?: string
				})]
				deletion_protection_enabled?: bool
				deny_maintenance_period?: [...close({
					end_date?:   string
					start_date?: string
					time?:       string
				})]
				disk_autoresize?:              bool
				disk_autoresize_limit?:        number
				disk_size?:                    number
				disk_type?:                    string
				edition?:                      string
				effective_availability_type?:  string
				enable_dataplex_integration?:  bool
				enable_google_ml_integration?: bool
				final_backup_config?: [...close({
					enabled?:        bool
					retention_days?: number
				})]
				insights_config?: [...close({
					query_insights_enabled?:  bool
					query_plans_per_minute?:  number
					query_string_length?:     number
					record_application_tags?: bool
					record_client_address?:   bool
				})]
				ip_configuration?: [...close({
					allocated_ip_range?: string
					authorized_networks?: [...close({
						expiration_time?: string
						name?:            string
						value?:           string
					})]
					custom_subject_alternative_names?: [...string]
					enable_private_path_for_google_cloud_services?: bool
					ipv4_enabled?:                                  bool
					private_network?:                               string
					psc_config?: [...close({
						allowed_consumer_projects?: [...string]
						network_attachment_uri?: string
						psc_auto_connections?: [...close({
							consumer_network?:            string
							consumer_network_status?:     string
							consumer_service_project_id?: string
							ip_address?:                  string
							status?:                      string
						})]
						psc_enabled?: bool
					})]
					server_ca_mode?: string
					server_ca_pool?: string
					ssl_mode?:       string
				})]
				location_preference?: [...close({
					follow_gae_application?: string
					secondary_zone?:         string
					zone?:                   string
				})]
				maintenance_window?: [...close({
					day?:          number
					hour?:         number
					update_track?: string
				})]
				password_validation_policy?: [...close({
					complexity?:                  string
					disallow_username_substring?: bool
					enable_password_policy?:      bool
					min_length?:                  number
					password_change_interval?:    string
					reuse_interval?:              number
				})]
				pricing_plan?: string
				read_pool_auto_scale_config?: [...close({
					disable_scale_in?:           bool
					enabled?:                    bool
					max_node_count?:             number
					min_node_count?:             number
					scale_in_cooldown_seconds?:  number
					scale_out_cooldown_seconds?: number
					target_metrics?: [...close({
						metric?:       string
						target_value?: number
					})]
				})]
				retain_backups_on_delete?: bool
				sql_server_audit_config?: [...close({
					bucket?:             string
					retention_interval?: string
					upload_interval?:    string
				})]
				tier?:      string
				time_zone?: string
				user_labels?: [string]: string
				version?: number
			})]
		})]

		// Project ID of the project that contains the instances.
		project?: string

		// To filter out the database instances which are located in this
		// specified region.
		region?: string

		// To filter out the database instances based on the current state
		// of the database instance, valid values include :
		// "SQL_INSTANCE_STATE_UNSPECIFIED", "RUNNABLE", "SUSPENDED",
		// "PENDING_DELETE", "PENDING_CREATE", "MAINTENANCE" and
		// "FAILED".
		state?: string

		// To filter out the database instances based on the machine type.
		tier?: string

		// To filter out the database instances which are located in this
		// specified zone.
		zone?: string
	})
}
