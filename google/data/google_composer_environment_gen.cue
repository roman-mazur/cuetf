package data

#google_composer_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_composer_environment")
	close({
		// Configuration parameters for this environment.
		config?: [...close({
			airflow_uri?:    string
			dag_gcs_prefix?: string
			data_retention_config?: [...close({
				airflow_metadata_retention_config?: [...close({
					retention_days?: number
					retention_mode?: string
				})]
				task_logs_retention_config?: [...close({
					storage_mode?: string
				})]
			})]
			database_config?: [...close({
				machine_type?: string
				zone?:         string
			})]
			enable_private_builds_only?: bool
			enable_private_environment?: bool
			encryption_config?: [...close({
				kms_key_name?: string
			})]
			environment_size?: string
			gke_cluster?:      string
			maintenance_window?: [...close({
				end_time?:   string
				recurrence?: string
				start_time?: string
			})]
			master_authorized_networks_config?: [...close({
				cidr_blocks?: [...close({
					cidr_block?:   string
					display_name?: string
				})]
				enabled?: bool
			})]
			node_config?: [...close({
				composer_internal_ipv4_cidr_block?: string
				composer_network_attachment?:       string
				disk_size_gb?:                      number
				enable_ip_masq_agent?:              bool
				ip_allocation_policy?: [...close({
					cluster_ipv4_cidr_block?:       string
					cluster_secondary_range_name?:  string
					services_ipv4_cidr_block?:      string
					services_secondary_range_name?: string
					use_ip_aliases?:                bool
				})]
				machine_type?: string
				network?:      string
				oauth_scopes?: [...string]
				service_account?: string
				subnetwork?:      string
				tags?: [...string]
				zone?: string
			})]
			node_count?: number
			private_environment_config?: [...close({
				cloud_composer_connection_subnetwork?:   string
				cloud_composer_network_ipv4_cidr_block?: string
				cloud_sql_ipv4_cidr_block?:              string
				connection_type?:                        string
				enable_private_endpoint?:                bool
				enable_privately_used_public_ips?:       bool
				master_ipv4_cidr_block?:                 string
				web_server_ipv4_cidr_block?:             string
			})]
			recovery_config?: [...close({
				scheduled_snapshots_config?: [...close({
					enabled?:                    bool
					snapshot_creation_schedule?: string
					snapshot_location?:          string
					time_zone?:                  string
				})]
			})]
			resilience_mode?: string
			software_config?: [...close({
				airflow_config_overrides?: [string]: string
				cloud_data_lineage_integration?: [...close({
					enabled?: bool
				})]
				env_variables?: [string]: string
				image_version?: string
				pypi_packages?: [string]: string
				python_version?:          string
				scheduler_count?:         number
				web_server_plugins_mode?: string
			})]
			web_server_config?: [...close({
				machine_type?: string
			})]
			web_server_network_access_control?: [...close({
				allowed_ip_range?: [...close({
					description?: string
					value?:       string
				})]
			})]
			workloads_config?: [...close({
				dag_processor?: [...close({
					count?:      number
					cpu?:        number
					memory_gb?:  number
					storage_gb?: number
				})]
				scheduler?: [...close({
					count?:      number
					cpu?:        number
					memory_gb?:  number
					storage_gb?: number
				})]
				triggerer?: [...close({
					count?:     number
					cpu?:       number
					memory_gb?: number
				})]
				web_server?: [...close({
					cpu?:        number
					memory_gb?:  number
					storage_gb?: number
				})]
				worker?: [...close({
					cpu?:        number
					max_count?:  number
					memory_gb?:  number
					min_count?:  number
					storage_gb?: number
				})]
			})]
		})]

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// User-defined labels for this environment. The labels map can
		// contain no more than 64 entries. Entries of the labels map are
		// UTF8 strings that comply with the following restrictions:
		// Label keys must be between 1 and 63 characters long and must
		// conform to the following regular expression:
		// [a-z]([-a-z0-9]*[a-z0-9])?. Label values must be between 0 and
		// 63 characters long and must conform to the regular expression
		// ([a-z]([-a-z0-9]*[a-z0-9])?)?. No more than 64 labels can be
		// associated with a given environment. Both keys and values must
		// be <= 128 bytes in size.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Name of the environment.
		name!: string

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string
		id?:      string

		// The location or Compute Engine region for the environment.
		region?: string

		// Configuration options for storage used by Composer environment.
		storage_config?: [...close({
			bucket?: string
		})]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})
}
