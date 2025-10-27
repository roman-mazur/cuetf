package data

#google_redis_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_redis_cluster")
	close({
		// Optional. The authorization mode of the Redis cluster. If not
		// provided, auth feature is disabled for the cluster. Default
		// value: "AUTH_MODE_DISABLED" Possible values:
		// ["AUTH_MODE_UNSPECIFIED", "AUTH_MODE_IAM_AUTH",
		// "AUTH_MODE_DISABLED"]
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

		// The timestamp associated with the cluster creation request. A
		// timestamp in
		// RFC3339 UTC "Zulu" format, with nanosecond resolution and up to
		// nine fractional
		// digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// Cross cluster replication config
		cross_cluster_replication_config?: [...close({
			cluster_role?: string
			membership?: [...close({
				primary_cluster?: [...close({
					cluster?: string
					uid?:     string
				})]
				secondary_clusters?: [...close({
					cluster?: string
					uid?:     string
				})]
			})]
			primary_cluster?: [...close({
				cluster?: string
				uid?:     string
			})]
			secondary_clusters?: [...close({
				cluster?: string
				uid?:     string
			})]
			update_time?: string
		})]

		// Optional. Indicates if the cluster is deletion protected or
		// not.
		// If the value if set to true, any delete cluster operation will
		// fail.
		// Default value is true.
		deletion_protection_enabled?: bool

		// Output only. Endpoints created on each given network,
		// for Redis clients to connect to the cluster.
		// Currently only one endpoint is supported.
		discovery_endpoints?: [...close({
			address?: string
			port?:    number
			psc_config?: [...close({
				network?: string
			})]
		})]

		// This field represents the actual maintenance version of the
		// cluster.
		effective_maintenance_version?: string

		// Backups stored in Cloud Storage buckets. The Cloud Storage
		// buckets need to be the same region as the clusters.
		gcs_source?: [...close({
			uris?: [...string]
		})]

		// The KMS key used to encrypt the at-rest data of the cluster.
		kms_key?: string
		id?:      string

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

		// Backups that generated and managed by memorystore.
		managed_backup_source?: [...close({
			backup?: string
		})]

		// Cluster's Certificate Authority. This field will only be
		// populated if Redis Cluster's transit_encryption_mode is
		// TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION
		managed_server_ca?: [...close({
			ca_certs?: [...close({
				certificates?: [...string]
			})]
		})]

		// Unique name of the resource in this scope including project and
		// location using the form:
		// projects/{projectId}/locations/{locationId}/clusters/{clusterId}
		name!: string

		// The nodeType for the Redis cluster.
		// If not provided, REDIS_HIGHMEM_MEDIUM will be used as default
		// Possible values: ["REDIS_SHARED_CORE_NANO",
		// "REDIS_HIGHMEM_MEDIUM", "REDIS_HIGHMEM_XLARGE",
		// "REDIS_STANDARD_SMALL"]
		node_type?: string

		// Persistence config (RDB, AOF) for the cluster.
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

		// Output only. Redis memory precise size in GB for the entire
		// cluster.
		precise_size_gb?: number

		// Required. Each PscConfig configures the consumer network where
		// two
		// network addresses will be designated to the cluster for client
		// access.
		// Currently, only one PscConfig is supported.
		psc_configs?: [...close({
			network?: string
		})]

		// Output only. PSC connections for discovery of the cluster
		// topology and accessing the cluster.
		psc_connections?: [...close({
			address?:           string
			forwarding_rule?:   string
			network?:           string
			project_id?:        string
			psc_connection_id?: string
		})]

		// Service attachment details to configure Psc connections.
		psc_service_attachments?: [...close({
			connection_type?:    string
			service_attachment?: string
		})]

		// Configure Redis Cluster behavior using a subset of native Redis
		// configuration parameters.
		// Please check Memorystore documentation for the list of
		// supported parameters:
		// https://cloud.google.com/memorystore/docs/cluster/supported-instance-configurations
		redis_configs?: [string]: string
		project?: string

		// The name of the region of the Redis cluster.
		region?: string

		// Optional. The number of replica nodes per shard.
		replica_count?: number

		// Required. Number of shards for the Redis cluster.
		shard_count?: number

		// Output only. Redis memory size in GB for the entire cluster.
		size_gb?: number

		// The current state of this cluster. Can be CREATING, READY,
		// UPDATING, DELETING and SUSPENDED
		state?: string

		// Output only. Additional information about the current state of
		// the cluster.
		state_info?: [...close({
			update_info?: [...close({
				target_replica_count?: number
				target_shard_count?:   number
			})]
		})]

		// Optional. The in-transit encryption for the Redis cluster.
		// If not provided, encryption is disabled for the cluster.
		// Default value: "TRANSIT_ENCRYPTION_MODE_DISABLED" Possible
		// values: ["TRANSIT_ENCRYPTION_MODE_UNSPECIFIED",
		// "TRANSIT_ENCRYPTION_MODE_DISABLED",
		// "TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION"]
		transit_encryption_mode?: string

		// System assigned, unique identifier for the cluster.
		uid?: string

		// Immutable. Zone distribution config for Memorystore Redis
		// cluster.
		zone_distribution_config?: [...close({
			mode?: string
			zone?: string
		})]
	})
}
