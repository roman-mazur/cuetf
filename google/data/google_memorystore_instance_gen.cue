package data

#google_memorystore_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_memorystore_instance")
	close({
		// Optional. Immutable. Authorization mode of the instance.
		// Possible values:
		// AUTH_DISABLED
		// IAM_AUTH
		authorization_mode?: string

		// The automated backup config for a instance.
		automated_backup_config?: [...close({
			fixed_frequency_schedule?: [...close({
				start_time?: [...close({
					hours?: number
				})]
			})]
			retention?: string
		})]

		// This field is used to determine the available maintenance
		// versions for the self service update.
		available_maintenance_versions?: [...string]

		// The backup collection full resource name.
		// Example:
		// projects/{project}/locations/{location}/backupCollections/{collection}
		backup_collection?: string

		// Output only. Creation timestamp of the instance.
		create_time?: string

		// Cross instance replication config
		cross_instance_replication_config?: [...close({
			instance_role?: string
			membership?: [...close({
				primary_instance?: [...close({
					instance?: string
					uid?:      string
				})]
				secondary_instance?: [...close({
					instance?: string
					uid?:      string
				})]
			})]
			primary_instance?: [...close({
				instance?: string
				uid?:      string
			})]
			secondary_instances?: [...close({
				instance?: string
				uid?:      string
			})]
			update_time?: string
		})]

		// Optional. If set to true deletion of the instance will fail.
		deletion_protection_enabled?: bool

		// Immutable. User inputs for the auto-created endpoints
		// connections.
		desired_auto_created_endpoints?: [...close({
			network?:    string
			project_id?: string
		})]

		// 'desired_psc_auto_connections' is deprecated Use
		// 'desired_auto_created_endpoints' instead 'terraform import'
		// will only work with desired_auto_created_endpoints'.
		desired_psc_auto_connections?: [...close({
			network?:    string
			project_id?: string
		})]

		// Deprecated. Output only. Endpoints clients can connect to the
		// instance through.
		discovery_endpoints?: [...close({
			address?: string
			network?: string
			port?:    number
		})]

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// This field represents the actual maintenance version of the
		// cluster.
		effective_maintenance_version?: string

		// Endpoints for the instance.
		endpoints?: [...close({
			connections?: [...close({
				psc_auto_connection?: [...close({
					connection_type?:    string
					forwarding_rule?:    string
					ip_address?:         string
					network?:            string
					port?:               number
					project_id?:         string
					psc_connection_id?:  string
					service_attachment?: string
				})]
			})]
		})]

		// Optional. User-provided engine configurations for the instance.
		engine_configs?: [string]: string

		// Optional. Engine version of the instance.
		engine_version?: string

		// GCS source for the instance.
		gcs_source?: [...close({
			uris?: [...string]
		})]
		id?: string

		// Required. The ID to use for the instance, which will become the
		// final component of
		// the instance's resource name.
		//
		// This value is subject to the following restrictions:
		//
		// * Must be 4-63 characters in length
		// * Must begin with a letter or digit
		// * Must contain only lowercase letters, digits, and hyphens
		// * Must not end with a hyphen
		// * Must be unique within a location
		instance_id!: string

		// The KMS key used to encrypt the at-rest data of the cluster
		kms_key?: string

		// Optional. Labels to represent user-provided metadata.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122. See documentation for resource
		// type 'memorystore.googleapis.com/CertificateAuthority'.
		location?: string

		// Maintenance policy for a cluster
		maintenance_policy?: [...close({
			create_time?: string
			update_time?: string
			weekly_maintenance_window?: [...close({
				day?:      string
				duration?: string
				start_time?: [...close({
					hours?:   number
					minutes?: number
					nanos?:   number
					seconds?: number
				})]
			})]
		})]

		// Upcoming maintenance schedule.
		maintenance_schedule?: [...close({
			end_time?:               string
			schedule_deadline_time?: string
			start_time?:             string
		})]

		// This field can be used to trigger self service update to
		// indicate the desired maintenance version. The input to this
		// field can be determined by the available_maintenance_versions
		// field.
		// *Note*: This field can only be specified when updating an
		// existing cluster to a newer version. Downgrades are currently
		// not supported!
		maintenance_version?: string

		// Managed backup source for the instance.
		managed_backup_source?: [...close({
			backup?: string
		})]

		// Instance's Certificate Authority. This field will only be
		// populated if instance's transit_encryption_mode is
		// SERVER_AUTHENTICATION
		managed_server_ca?: [...close({
			ca_certs?: [...close({
				certificates?: [...string]
			})]
		})]

		// Optional. cluster or cluster-disabled.
		// Possible values:
		// CLUSTER
		// CLUSTER_DISABLED Possible values: ["CLUSTER",
		// "CLUSTER_DISABLED"]
		mode?: string

		// Identifier. Unique name of the instance.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}
		name?: string

		// Represents configuration for nodes of the instance.
		node_config?: [...close({
			size_gb?: number
		})]

		// Optional. Machine type for individual nodes of the instance.
		// Possible values:
		// SHARED_CORE_NANO
		// HIGHMEM_MEDIUM
		// HIGHMEM_XLARGE
		// STANDARD_SMALL
		node_type?: string

		// Represents persistence configuration for a instance.
		persistence_config?: [...close({
			aof_config?: [...close({
				append_fsync?: string
			})]
			mode?: string
			rdb_config?: [...close({
				rdb_snapshot_period?:     string
				rdb_snapshot_start_time?: string
			})]
		})]

		// Configuration of a service attachment of the cluster, for
		// creating PSC connections.
		psc_attachment_details?: [...close({
			connection_type?:    string
			service_attachment?: string
		})]

		// Output only. User inputs and resource details of the
		// auto-created PSC connections.
		psc_auto_connections?: [...close({
			connection_type?:       string
			forwarding_rule?:       string
			ip_address?:            string
			network?:               string
			port?:                  number
			project_id?:            string
			psc_connection_id?:     string
			psc_connection_status?: string
			service_attachment?:    string
		})]
		project?: string

		// Optional. Number of replica nodes per shard. If omitted the
		// default is 0 replicas.
		replica_count?: number

		// Required. Number of shards for the instance.
		shard_count?: number

		// Output only. Current state of the instance.
		// Possible values:
		// CREATING
		// ACTIVE
		// UPDATING
		// DELETING
		state?: string

		// Additional information about the state of the instance.
		state_info?: [...close({
			update_info?: [...close({
				target_engine_version?: string
				target_node_type?:      string
				target_replica_count?:  number
				target_shard_count?:    number
			})]
		})]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Optional. Immutable. In-transit encryption mode of the
		// instance.
		// Possible values:
		// TRANSIT_ENCRYPTION_DISABLED
		// SERVER_AUTHENTICATION
		transit_encryption_mode?: string

		// Output only. System assigned, unique identifier for the
		// instance.
		uid?: string

		// Output only. Latest update timestamp of the instance.
		update_time?: string

		// Zone distribution configuration for allocation of instance
		// resources.
		zone_distribution_config?: [...close({
			mode?: string
			zone?: string
		})]
	})
}
