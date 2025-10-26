package res

import "list"

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
		automated_backup_config?: matchN(1, [#automated_backup_config, list.MaxItems(1) & [...#automated_backup_config]])

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

		// The KMS key used to encrypt the at-rest data of the cluster.
		kms_key?: string
		id?:      string

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
		name?: string

		// The nodeType for the Redis cluster.
		// If not provided, REDIS_HIGHMEM_MEDIUM will be used as default
		// Possible values: ["REDIS_SHARED_CORE_NANO",
		// "REDIS_HIGHMEM_MEDIUM", "REDIS_HIGHMEM_XLARGE",
		// "REDIS_STANDARD_SMALL"]
		node_type?: string

		// Output only. Redis memory precise size in GB for the entire
		// cluster.
		precise_size_gb?: number

		// Output only. PSC connections for discovery of the cluster
		// topology and accessing the cluster.
		psc_connections?: [...close({
			address?:           string
			forwarding_rule?:   string
			network?:           string
			project_id?:        string
			psc_connection_id?: string
		})]
		project?: string
		cross_cluster_replication_config?: matchN(1, [#cross_cluster_replication_config, list.MaxItems(1) & [...#cross_cluster_replication_config]])
		gcs_source?: matchN(1, [#gcs_source, list.MaxItems(1) & [...#gcs_source]])
		maintenance_policy?: matchN(1, [#maintenance_policy, list.MaxItems(1) & [...#maintenance_policy]])
		managed_backup_source?: matchN(1, [#managed_backup_source, list.MaxItems(1) & [...#managed_backup_source]])
		persistence_config?: matchN(1, [#persistence_config, list.MaxItems(1) & [...#persistence_config]])
		psc_configs?: matchN(1, [#psc_configs, [...#psc_configs]])
		timeouts?: #timeouts

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

		// The name of the region of the Redis cluster.
		region?: string
		zone_distribution_config?: matchN(1, [#zone_distribution_config, list.MaxItems(1) & [...#zone_distribution_config]])

		// Optional. The number of replica nodes per shard.
		replica_count?: number

		// Required. Number of shards for the Redis cluster.
		shard_count!: number

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
	})

	#automated_backup_config: close({
		fixed_frequency_schedule?: matchN(1, [_#defs."/$defs/automated_backup_config/$defs/fixed_frequency_schedule", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/automated_backup_config/$defs/fixed_frequency_schedule"]])

		// How long to keep automated backups before the backups are
		// deleted.
		// The value should be between 1 day and 365 days. If not
		// specified, the default value is 35 days.
		// A duration in seconds with up to nine fractional digits, ending
		// with 's'. Example: "3.5s".
		retention!: string
	})

	#cross_cluster_replication_config: close({
		// The role of the cluster in cross cluster replication. Supported
		// values are:
		//
		// 1. 'CLUSTER_ROLE_UNSPECIFIED': This is an independent cluster
		// that has never participated in cross cluster replication. It
		// allows both reads and writes.
		//
		// 1. 'NONE': This is an independent cluster that previously
		// participated in cross cluster replication(either as a
		// 'PRIMARY' or 'SECONDARY' cluster). It allows both reads and
		// writes.
		//
		// 1. 'PRIMARY': This cluster serves as the replication source for
		// secondary clusters that are replicating from it. Any data
		// written to it is automatically replicated to its secondary
		// clusters. It allows both reads and writes.
		//
		// 1. 'SECONDARY': This cluster replicates data from the primary
		// cluster. It allows only reads. Possible values:
		// ["CLUSTER_ROLE_UNSPECIFIED", "NONE", "PRIMARY", "SECONDARY"]
		cluster_role?: string

		// An output only view of all the member clusters participating in
		// cross cluster replication. This field is populated for all the
		// member clusters irrespective of their cluster role.
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
		primary_cluster?: matchN(1, [_#defs."/$defs/cross_cluster_replication_config/$defs/primary_cluster", list.MaxItems(1) & [..._#defs."/$defs/cross_cluster_replication_config/$defs/primary_cluster"]])

		// The last time cross cluster replication config was updated.
		update_time?: string
		secondary_clusters?: matchN(1, [_#defs."/$defs/cross_cluster_replication_config/$defs/secondary_clusters", [..._#defs."/$defs/cross_cluster_replication_config/$defs/secondary_clusters"]])
	})

	#gcs_source: close({
		// URIs of the GCS objects to import. Example:
		// gs://bucket1/object1, gs://bucket2/folder2/object2
		uris!: [...string]
	})

	#maintenance_policy: close({
		weekly_maintenance_window?: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_window", [..._#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_window"]])

		// Output only. The time when the policy was created.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		create_time?: string

		// Output only. The time when the policy was last updated.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		update_time?: string
	})

	#managed_backup_source: close({
		// Example:
		// 'projects/{project}/locations/{location}/backupCollections/{collection}/backups/{backup}'.
		backup!: string
	})

	#persistence_config: close({
		aof_config?: matchN(1, [_#defs."/$defs/persistence_config/$defs/aof_config", list.MaxItems(1) & [..._#defs."/$defs/persistence_config/$defs/aof_config"]])
		rdb_config?: matchN(1, [_#defs."/$defs/persistence_config/$defs/rdb_config", list.MaxItems(1) & [..._#defs."/$defs/persistence_config/$defs/rdb_config"]])

		// Optional. Controls whether Persistence features are enabled. If
		// not provided, the existing value will be used.
		//
		// - DISABLED: Persistence (both backup and restore) is disabled
		// for the cluster.
		// - RDB: RDB based Persistence is enabled.
		// - AOF: AOF based Persistence is enabled. Possible values:
		// ["PERSISTENCE_MODE_UNSPECIFIED", "DISABLED", "RDB", "AOF"]
		mode?: string
	})

	#psc_configs: close({
		// Required. The consumer network where the network address of
		// the discovery endpoint will be reserved, in the form of
		// projects/{network_project_id_or_number}/global/networks/{network_id}.
		network!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#zone_distribution_config: close({
		// Immutable. The mode for zone distribution for Memorystore Redis
		// cluster.
		// If not provided, MULTI_ZONE will be used as default Possible
		// values: ["MULTI_ZONE", "SINGLE_ZONE"]
		mode?: string

		// Immutable. The zone for single zone Memorystore Redis cluster.
		zone?: string
	})

	_#defs: "/$defs/automated_backup_config/$defs/fixed_frequency_schedule": close({
		start_time?: matchN(1, [_#defs."/$defs/automated_backup_config/$defs/fixed_frequency_schedule/$defs/start_time", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/automated_backup_config/$defs/fixed_frequency_schedule/$defs/start_time"]])
	})

	_#defs: "/$defs/automated_backup_config/$defs/fixed_frequency_schedule/$defs/start_time": close({
		// Hours of a day in 24 hour format. Must be greater than or equal
		// to 0 and typically must be less than or equal to 23.
		// An API may choose to allow the value "24:00:00" for scenarios
		// like business closing time.
		hours!: number
	})

	_#defs: "/$defs/cross_cluster_replication_config/$defs/primary_cluster": close({
		// The full resource path of the primary cluster in the format:
		// projects/{project}/locations/{region}/clusters/{cluster-id}
		cluster?: string

		// The unique id of the primary cluster.
		uid?: string
	})

	_#defs: "/$defs/cross_cluster_replication_config/$defs/secondary_clusters": close({
		// The full resource path of the secondary cluster in the format:
		// projects/{project}/locations/{region}/clusters/{cluster-id}
		cluster?: string

		// The unique id of the secondary cluster.
		uid?: string
	})

	_#defs: "/$defs/maintenance_policy/$defs/weekly_maintenance_window": close({
		start_time?: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_window/$defs/start_time", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_window/$defs/start_time"]])

		// Required. The day of week that maintenance updates occur.
		//
		// - DAY_OF_WEEK_UNSPECIFIED: The day of the week is unspecified.
		// - MONDAY: Monday
		// - TUESDAY: Tuesday
		// - WEDNESDAY: Wednesday
		// - THURSDAY: Thursday
		// - FRIDAY: Friday
		// - SATURDAY: Saturday
		// - SUNDAY: Sunday Possible values: ["DAY_OF_WEEK_UNSPECIFIED",
		// "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY",
		// "SATURDAY", "SUNDAY"]
		day!: string

		// Output only. Duration of the maintenance window.
		// The current window is fixed at 1 hour.
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s".
		duration?: string
	})

	_#defs: "/$defs/maintenance_policy/$defs/weekly_maintenance_window/$defs/start_time": close({
		// Hours of day in 24 hour format. Should be from 0 to 23.
		// An API may choose to allow the value "24:00:00" for scenarios
		// like business closing time.
		hours?: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes?: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos?: number

		// Seconds of minutes of the time. Must normally be from 0 to 59.
		// An API may allow the value 60 if it allows leap-seconds.
		seconds?: number
	})

	_#defs: "/$defs/persistence_config/$defs/aof_config": close({
		// Optional. Available fsync modes.
		//
		// - NO - Do not explicitly call fsync(). Rely on OS defaults.
		// - EVERYSEC - Call fsync() once per second in a background
		// thread. A balance between performance and durability.
		// - ALWAYS - Call fsync() for earch write command. Possible
		// values: ["APPEND_FSYNC_UNSPECIFIED", "NO", "EVERYSEC",
		// "ALWAYS"]
		append_fsync?: string
	})

	_#defs: "/$defs/persistence_config/$defs/rdb_config": close({
		// Optional. Available snapshot periods for scheduling.
		//
		// - ONE_HOUR: Snapshot every 1 hour.
		// - SIX_HOURS: Snapshot every 6 hours.
		// - TWELVE_HOURS: Snapshot every 12 hours.
		// - TWENTY_FOUR_HOURS: Snapshot every 24 hours. Possible values:
		// ["SNAPSHOT_PERIOD_UNSPECIFIED", "ONE_HOUR", "SIX_HOURS",
		// "TWELVE_HOURS", "TWENTY_FOUR_HOURS"]
		rdb_snapshot_period?: string

		// The time that the first snapshot was/will be attempted, and to
		// which
		// future snapshots will be aligned.
		// If not provided, the current time will be used.
		rdb_snapshot_start_time?: string
	})
}
