package res

import "list"

#google_memorystore_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_memorystore_instance")
	close({
		// Optional. Immutable. Authorization mode of the instance.
		// Possible values:
		// AUTH_DISABLED
		// IAM_AUTH
		authorization_mode?: string

		// This field is used to determine the available maintenance
		// versions for the self service update.
		available_maintenance_versions?: [...string]

		// The backup collection full resource name.
		// Example:
		// projects/{project}/locations/{location}/backupCollections/{collection}
		backup_collection?: string

		// Output only. Creation timestamp of the instance.
		create_time?: string

		// Optional. If set to true deletion of the instance will fail.
		deletion_protection_enabled?: bool

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
		id?:             string

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
		location!: string

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

		// Instance's Certificate Authority. This field will only be
		// populated if instance's transit_encryption_mode is
		// SERVER_AUTHENTICATION
		managed_server_ca?: [...close({
			ca_certs?: [...close({
				certificates?: [...string]
			})]
		})]
		automated_backup_config?: matchN(1, [#automated_backup_config, list.MaxItems(1) & [...#automated_backup_config]])
		cross_instance_replication_config?: matchN(1, [#cross_instance_replication_config, list.MaxItems(1) & [...#cross_instance_replication_config]])
		desired_auto_created_endpoints?: matchN(1, [#desired_auto_created_endpoints, [...#desired_auto_created_endpoints]])
		desired_psc_auto_connections?: matchN(1, [#desired_psc_auto_connections, [...#desired_psc_auto_connections]])
		gcs_source?: matchN(1, [#gcs_source, list.MaxItems(1) & [...#gcs_source]])
		maintenance_policy?: matchN(1, [#maintenance_policy, list.MaxItems(1) & [...#maintenance_policy]])
		managed_backup_source?: matchN(1, [#managed_backup_source, list.MaxItems(1) & [...#managed_backup_source]])
		persistence_config?: matchN(1, [#persistence_config, list.MaxItems(1) & [...#persistence_config]])
		timeouts?: #timeouts
		zone_distribution_config?: matchN(1, [#zone_distribution_config, list.MaxItems(1) & [...#zone_distribution_config]])

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
		project?:   string

		// Configuration of a service attachment of the cluster, for
		// creating PSC connections.
		psc_attachment_details?: [...close({
			connection_type?:    string
			service_attachment?: string
		})]

		// Optional. Number of replica nodes per shard. If omitted the
		// default is 0 replicas.
		replica_count?: number

		// Required. Number of shards for the instance.
		shard_count!: number

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
	})

	#automated_backup_config: close({
		fixed_frequency_schedule?: matchN(1, [_#defs."/$defs/automated_backup_config/$defs/fixed_frequency_schedule", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/automated_backup_config/$defs/fixed_frequency_schedule"]])

		// How long to keep automated backups before the backups are
		// deleted.
		// The value should be between 1 day and 365 days. If not
		// specified, the default value is 35 days.
		// A duration in seconds with up to nine fractional digits, ending
		// with 's'. Example: "3.5s". The default_value is "3024000s"
		retention!: string
	})

	#cross_instance_replication_config: close({
		// The instance role supports the following values:
		// 1. 'INSTANCE_ROLE_UNSPECIFIED': This is an independent instance
		// that has never participated in cross instance replication. It
		// allows both reads and writes.
		// 2. 'NONE': This is an independent instance that previously
		// participated in cross instance replication(either as a
		// 'PRIMARY' or 'SECONDARY' cluster). It allows both reads and
		// writes.
		// 3. 'PRIMARY': This instance serves as the replication source
		// for secondary instance that are replicating from it. Any data
		// written to it is automatically replicated to its secondary
		// clusters. It allows both reads and writes.
		// 4. 'SECONDARY': This instance replicates data from the primary
		// instance. It allows only reads. Possible values:
		// ["INSTANCE_ROLE_UNSPECIFIED", "NONE", "PRIMARY", "SECONDARY"]
		instance_role?: string

		// An output only view of all the member instance participating in
		// cross instance replication. This field is populated for all
		// the member clusters irrespective of their cluster role.
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
		primary_instance?: matchN(1, [_#defs."/$defs/cross_instance_replication_config/$defs/primary_instance", list.MaxItems(1) & [..._#defs."/$defs/cross_instance_replication_config/$defs/primary_instance"]])

		// The last time cross instance replication config was updated.
		update_time?: string
		secondary_instances?: matchN(1, [_#defs."/$defs/cross_instance_replication_config/$defs/secondary_instances", [..._#defs."/$defs/cross_instance_replication_config/$defs/secondary_instances"]])
	})

	#desired_auto_created_endpoints: close({
		// Required. The consumer network where the IP address resides, in
		// the form of
		// projects/{project_id}/global/networks/{network_id}.
		network!: string

		// Required. The consumer project_id where the forwarding rule is
		// created from.
		project_id!: string
	})

	#desired_psc_auto_connections: close({
		// Required. The consumer network where the IP address resides, in
		// the form of
		// projects/{project_id}/global/networks/{network_id}.
		network!: string

		// Required. The consumer project_id where the forwarding rule is
		// created from.
		project_id!: string
	})

	#gcs_source: close({
		// URIs of the GCS objects to import.
		// Example: gs://bucket1/object1, gs://bucket2/folder2/object2
		uris!: [...string]
	})

	#maintenance_policy: close({
		weekly_maintenance_window?: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_window", [..._#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_window"]])

		// The time when the policy was created.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		create_time?: string

		// The time when the policy was last updated.
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

		// Optional. Current persistence mode.
		// Possible values:
		// DISABLED
		// RDB
		// AOF Possible values: ["DISABLED", "RDB", "AOF"]
		mode?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#zone_distribution_config: close({
		// Optional. Current zone distribution mode. Defaults to
		// MULTI_ZONE.
		// Possible values:
		// MULTI_ZONE
		// SINGLE_ZONE Possible values: ["MULTI_ZONE", "SINGLE_ZONE"]
		mode?: string

		// Optional. Defines zone where all resources will be allocated
		// with SINGLE_ZONE mode.
		// Ignored for MULTI_ZONE mode.
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

	_#defs: "/$defs/cross_instance_replication_config/$defs/primary_instance": close({
		// The full resource path of the primary instance in the format:
		// projects/{project}/locations/{region}/instances/{instance-id}
		instance?: string

		// The unique id of the primary instance.
		uid?: string
	})

	_#defs: "/$defs/cross_instance_replication_config/$defs/secondary_instances": close({
		// The full resource path of the Nth instance in the format:
		// projects/{project}/locations/{region}/instance/{instance-id}
		instance?: string

		// The unique id of the Nth instance.
		uid?: string
	})

	_#defs: "/$defs/maintenance_policy/$defs/weekly_maintenance_window": close({
		start_time?: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_window/$defs/start_time", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_window/$defs/start_time"]])

		// The day of week that maintenance updates occur.
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

		// Duration of the maintenance window.
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
		// Optional. The fsync mode.
		// Possible values:
		// NEVER
		// EVERY_SEC
		// ALWAYS
		append_fsync?: string
	})

	_#defs: "/$defs/persistence_config/$defs/rdb_config": close({
		// Optional. Period between RDB snapshots.
		// Possible values:
		// ONE_HOUR
		// SIX_HOURS
		// TWELVE_HOURS
		// TWENTY_FOUR_HOURS
		rdb_snapshot_period?: string

		// Optional. Time that the first snapshot was/will be attempted,
		// and to which future
		// snapshots will be aligned. If not provided, the current time
		// will be
		// used.
		rdb_snapshot_start_time?: string
	})
}
