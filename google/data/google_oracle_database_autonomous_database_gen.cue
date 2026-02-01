package data

#google_oracle_database_autonomous_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_oracle_database_autonomous_database")
	close({
		// The password for the default ADMIN user.
		admin_password?: string

		// The ID of the Autonomous Database to create. This value is
		// restricted
		// to (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$) and must be a maximum of
		// 63
		// characters in length. The value must start with a letter and
		// end with
		// a letter or a number.
		autonomous_database_id!: string

		// The subnet CIDR range for the Autonmous Database.
		cidr?: string

		// The date and time that the Autonomous Database was created.
		create_time?: string

		// The name of the Autonomous Database. The database name must be
		// unique in
		// the project. The name must begin with a letter and can
		// contain a maximum of 30 alphanumeric characters.
		database?: string

		// Whether or not to allow Terraform to destroy the instance.
		// Unless this field is set to false in Terraform state, a
		// terraform destroy or terraform apply that would delete the
		// instance will fail.
		deletion_protection?: bool

		// List of supported GCP region to clone the Autonomous Database
		// for disaster recovery.
		disaster_recovery_supported_locations?: [...string]

		// The display name for the Autonomous Database. The name does not
		// have to
		// be unique within your project.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The ID of the subscription entitlement associated with the
		// Autonomous
		// Database.
		entitlement_id?: string
		id?:             string

		// The labels or tags associated with the Autonomous Database.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. See
		// documentation for resource type
		// 'oracledatabase.googleapis.com/AutonomousDatabaseBackup'.
		location!: string

		// Identifier. The name of the Autonomous Database resource in the
		// following format:
		// projects/{project}/locations/{region}/autonomousDatabases/{autonomous_database}
		name?: string

		// The name of the VPC network used by the Autonomous Database.
		// Format: projects/{project}/global/networks/{network}
		network?: string

		// The name of the OdbNetwork associated with the Autonomous
		// Database.
		// Format:
		// projects/{project}/locations/{location}/odbNetworks/{odb_network}
		// It is optional but if specified, this should match the parent
		// ODBNetwork of
		// the odb_subnet and backup_odb_subnet.
		odb_network?: string

		// The name of the OdbSubnet associated with the Autonomous
		// Database for
		// IP allocation. Format:
		// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
		odb_subnet?: string

		// The peer Autonomous Database names of the given Autonomous
		// Database.
		peer_autonomous_databases?: [...string]
		project?: string

		// The properties of an Autonomous Database.
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

		// The source Autonomous Database configuration for the standby
		// Autonomous Database.
		source_config?: [...close({
			automatic_backups_replication_enabled?: bool
			autonomous_database?:                   string
		})]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})
}
