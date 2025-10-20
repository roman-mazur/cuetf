package data

#google_sql_database_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_sql_database_instance")
	close({
		// Available Maintenance versions.
		available_maintenance_versions?: [...string]

		// The name of the BackupDR backup to restore from.
		backupdr_backup?: string

		// Configuration for creating a new instance as a clone of another
		// instance.
		clone?: [...close({
			allocated_ip_range?: string
			database_names?: [...string]
			point_in_time?:                 string
			preferred_zone?:                string
			source_instance_deletion_time?: string
			source_instance_name?:          string
		})]

		// The connection name of the instance to be used in connection
		// strings. For example, when connecting with Cloud SQL Proxy.
		connection_name?: string

		// The MySQL, PostgreSQL or SQL Server (beta) version to use.
		// Supported values include MYSQL_5_6, MYSQL_5_7, MYSQL_8_0,
		// MYSQL_8_4, POSTGRES_9_6, POSTGRES_10, POSTGRES_11,
		// POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15,
		// POSTGRES_16, POSTGRES_17, SQLSERVER_2017_STANDARD,
		// SQLSERVER_2017_ENTERPRISE, SQLSERVER_2017_EXPRESS,
		// SQLSERVER_2017_WEB. Database Version Policies includes an
		// up-to-date reference of supported versions.
		database_version?: string

		// Used to block Terraform from deleting a SQL Instance. Defaults
		// to true.
		deletion_protection?: bool

		// The instance-level dns name of the instance for PSC instances
		// or public IP CAS instances.
		dns_name?: string

		// The list of DNS names used by this instance. Different
		// connection types for an instance may have different DNS names.
		// DNS names can apply to an individual instance or a cluster of
		// instances.
		dns_names?: [...close({
			connection_type?: string
			dns_scope?:       string
			name?:            string
		})]
		encryption_key_name?: string

		// The description of final backup if instance enable create final
		// backup during instance deletion.
		final_backup_description?: string

		// The first IPv4 address of any type assigned. This is to support
		// accessing the first address in the list in a terraform output
		// when the resource is configured with a count.
		first_ip_address?: string
		id?:               string

		// The type of the instance. See
		// https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1/instances#SqlInstanceType
		// for supported values.
		instance_type?: string
		ip_address?: [...close({
			ip_address?:     string
			time_to_retire?: string
			type?:           string
		})]

		// Maintenance version.
		maintenance_version?: string

		// The name of the instance that will act as the master in the
		// replication setup. Note, this requires the master to have
		// binary_log_enabled set, as well as existing backups.
		master_instance_name?: string

		// The name of the instance. If the name is left blank, Terraform
		// will randomly generate one when the instance is first created.
		// This is done because after a name is used, it cannot be reused
		// for up to one week.
		name!: string

		// For a read pool instance, the number of nodes in the read pool.
		node_count?: number

		// Configuration for creating a new instance using
		// point-in-time-restore from backupdr backup.
		point_in_time_restore_context?: [...close({
			allocated_ip_range?: string
			datasource?:         string
			point_in_time?:      string
			preferred_zone?:     string
			target_instance?:    string
		})]

		// IPv4 address assigned. This is a workaround for an issue fixed
		// in Terraform 0.12 but also provides a convenient way to access
		// an IP of a specific type without performing filtering in a
		// Terraform config.
		private_ip_address?: string

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string

		// The link to service attachment of PSC instance.
		psc_service_attachment_link?: string

		// IPv4 address assigned. This is a workaround for an issue fixed
		// in Terraform 0.12 but also provides a convenient way to access
		// an IP of a specific type without performing filtering in a
		// Terraform config.
		public_ip_address?: string

		// The region the instance will sit in. Note, Cloud SQL is not
		// available in all regions. A valid region must be provided to
		// use this resource. If a region is not provided in the resource
		// definition, the provider region will be used instead, but this
		// will be an apply-time error for instances if the provider
		// region is not supported with Cloud SQL. If you choose not to
		// provide the region argument for this resource, make sure you
		// understand this.
		region?: string

		// The configuration for replication.
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

		// The replicas of the instance.
		replica_names?: [...string]

		// A primary instance and disaster recovery replica pair.
		// Applicable to MySQL and PostgreSQL. This field can be set only
		// after both the primary and replica are created.
		replication_cluster?: [...close({
			dr_replica?:               bool
			failover_dr_replica_name?: string
			psa_write_endpoint?:       string
		})]

		// Initial root password. Required for MS SQL Server.
		root_password?: string
		restore_backup_context?: [...close({
			backup_run_id?: number
			instance_id?:   string
			project?:       string
		})]

		// The URI of the created resource.
		self_link?: string

		// The service account email address assigned to the instance.
		service_account_email_address?: string
		server_ca_cert?: [...close({
			cert?:             string
			common_name?:      string
			create_time?:      string
			expiration_time?:  string
			sha1_fingerprint?: string
		})]

		// The settings to use for the database. The configuration is
		// detailed below.
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
			pricing_plan?:             string
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
	})
}
