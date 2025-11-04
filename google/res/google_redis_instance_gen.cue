package res

import "list"

#google_redis_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_redis_instance")
	close({
		// Only applicable to STANDARD_HA tier which protects the instance
		// against zonal failures by provisioning it across two zones.
		// If provided, it must be a different zone from the one provided
		// in
		// [locationId].
		alternative_location_id?: string

		// Optional. Indicates whether OSS Redis AUTH is enabled for the
		// instance. If set to "true" AUTH is enabled on the instance.
		// Default value is "false" meaning AUTH is disabled.
		auth_enabled?: bool

		// AUTH String set on the instance. This field will only be
		// populated if auth_enabled is true.
		auth_string?: string

		// The full name of the Google Compute Engine network to which the
		// instance is connected. If left unspecified, the default network
		// will be used.
		authorized_network?: string

		// The connection mode of the Redis instance. Default value:
		// "DIRECT_PEERING" Possible values: ["DIRECT_PEERING",
		// "PRIVATE_SERVICE_ACCESS"]
		connect_mode?: string

		// The time the instance was created in RFC3339 UTC "Zulu" format,
		// accurate to nanoseconds.
		create_time?: string

		// The current zone where the Redis endpoint is placed.
		// For Basic Tier instances, this will always be the same as the
		// [locationId] provided by the user at creation time. For
		// Standard Tier
		// instances, this can be either [locationId] or
		// [alternativeLocationId]
		// and can change after a failover event.
		current_location_id?: string

		// Optional. The KMS key reference that you want to use to encrypt
		// the data at rest for this Redis
		// instance. If this is provided, CMEK is enabled.
		customer_managed_key?: string

		// Whether Terraform will be prevented from destroying the
		// instance.
		// When a'terraform destroy' or 'terraform apply' would delete the
		// instance,
		// the command will fail if this field is not set to false in
		// Terraform state.
		// When the field is set to true or unset in Terraform state, a
		// 'terraform apply'
		// or 'terraform destroy' that would delete the instance will
		// fail.
		// When the field is set to false, deleting the instance is
		// allowed.
		deletion_protection?: bool

		// An arbitrary and optional user-provided name for the instance.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The CIDR range of internal addresses that are reserved for this
		// instance. If not provided, the service will choose an unused
		// /29
		// block, for example, 10.0.0.0/29 or 192.168.0.0/29. Ranges must
		// be
		// unique and non-overlapping with existing subnets in an
		// authorized
		// network.
		effective_reserved_ip_range?: string

		// Hostname or IP address of the exposed Redis endpoint used by
		// clients
		// to connect to the service.
		host?: string

		// Resource labels to represent user provided metadata.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The zone where the instance will be provisioned. If not
		// provided,
		// the service will choose a zone for the instance. For
		// STANDARD_HA tier,
		// instances will be created across two zones for protection
		// against
		// zonal failures. If [alternativeLocationId] is also provided, it
		// must
		// be different from [locationId].
		location_id?: string

		// Upcoming maintenance schedule.
		maintenance_schedule?: [...close({
			end_time?:               string
			schedule_deadline_time?: string
			start_time?:             string
		})]

		// The self service update maintenance version.
		maintenance_version?: string

		// Redis memory size in GiB.
		memory_size_gb!: number

		// The ID of the instance or a fully qualified identifier for the
		// instance.
		name!: string

		// Output only. Info per node.
		nodes?: [...close({
			id?:   string
			zone?: string
		})]

		// Output only. Cloud IAM identity used by import / export
		// operations
		// to transfer data to/from Cloud Storage. Format is
		// "serviceAccount:".
		// The value may change over time for a given instance so should
		// be
		// checked before each import/export operation.
		persistence_iam_identity?: string
		maintenance_policy?: matchN(1, [#maintenance_policy, list.MaxItems(1) & [...#maintenance_policy]])
		persistence_config?: matchN(1, [#persistence_config, list.MaxItems(1) & [...#persistence_config]])
		timeouts?: #timeouts

		// The port number of the exposed Redis endpoint.
		port?: number

		// Output only. Hostname or IP address of the exposed readonly
		// Redis endpoint. Standard tier only.
		// Targets all healthy replica nodes in instance. Replication is
		// asynchronous and replica nodes
		// will exhibit some lag behind the primary. Write requests must
		// target 'host'.
		read_endpoint?: string

		// Output only. The port number of the exposed readonly redis
		// endpoint. Standard tier only.
		// Write requests should target 'port'.
		read_endpoint_port?: number

		// Optional. Read replica mode. Can only be specified when trying
		// to create the instance.
		// If not set, Memorystore Redis backend will default to
		// READ_REPLICAS_DISABLED.
		// - READ_REPLICAS_DISABLED: If disabled, read endpoint will not
		// be provided and the
		// instance cannot scale up or down the number of replicas.
		// - READ_REPLICAS_ENABLED: If enabled, read endpoint will be
		// provided and the instance
		// can scale up and down the number of replicas. Possible values:
		// ["READ_REPLICAS_DISABLED", "READ_REPLICAS_ENABLED"]
		read_replicas_mode?: string
		project?:            string

		// Redis configuration parameters, according to
		// http://redis.io/topics/config.
		// Please check Memorystore documentation for the list of
		// supported parameters:
		// https://cloud.google.com/memorystore/docs/redis/reference/rest/v1/projects.locations.instances#Instance.FIELDS.redis_configs
		redis_configs?: [string]: string

		// The version of Redis software. If not provided, latest
		// supported
		// version will be used. Please check the API documentation linked
		// at the top for the latest valid values.
		redis_version?: string

		// The name of the Redis region of the instance.
		region?: string

		// Optional. The number of replica nodes. The valid range for the
		// Standard Tier with
		// read replicas enabled is [1-5] and defaults to 2. If read
		// replicas are not enabled
		// for a Standard Tier instance, the only valid value is 1 and the
		// default is 1.
		// The valid value for basic tier is 0 and the default is also 0.
		replica_count?: number

		// The CIDR range of internal addresses that are reserved for this
		// instance. If not provided, the service will choose an unused
		// /29
		// block, for example, 10.0.0.0/29 or 192.168.0.0/29. Ranges must
		// be
		// unique and non-overlapping with existing subnets in an
		// authorized
		// network.
		reserved_ip_range?: string

		// Optional. Additional IP range for node placement. Required when
		// enabling read replicas on
		// an existing instance. For DIRECT_PEERING mode value must be a
		// CIDR range of size /28, or
		// "auto". For PRIVATE_SERVICE_ACCESS mode value must be the name
		// of an allocated address
		// range associated with the private service access connection, or
		// "auto".
		secondary_ip_range?: string

		// List of server CA certificates for the instance.
		server_ca_certs?: [...close({
			cert?:             string
			create_time?:      string
			expire_time?:      string
			serial_number?:    string
			sha1_fingerprint?: string
		})]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The service tier of the instance. Must be one of these values:
		//
		// - BASIC: standalone instance
		// - STANDARD_HA: highly available primary/replica instances
		// Default value: "BASIC" Possible values: ["BASIC",
		// "STANDARD_HA"]
		tier?: string

		// The TLS mode of the Redis instance, If not provided, TLS is
		// disabled for the instance.
		//
		// - SERVER_AUTHENTICATION: Client to Server traffic encryption
		// enabled with server authentication Default value: "DISABLED"
		// Possible values: ["SERVER_AUTHENTICATION", "DISABLED"]
		transit_encryption_mode?: string
	})

	#maintenance_policy: close({
		// Output only. The time when the policy was created.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		create_time?: string
		weekly_maintenance_window?: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_window", [..._#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_window"]])

		// Optional. Description of what this policy is for.
		// Create/Update methods return INVALID_ARGUMENT if the
		// length is greater than 512.
		description?: string

		// Output only. The time when the policy was last updated.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		update_time?: string
	})

	#persistence_config: close({
		// Optional. Controls whether Persistence features are enabled. If
		// not provided, the existing value will be used.
		//
		// - DISABLED: Persistence is disabled for the instance, and any
		// existing snapshots are deleted.
		// - RDB: RDB based Persistence is enabled. Possible values:
		// ["DISABLED", "RDB"]
		persistence_mode?: string

		// Output only. The next time that a snapshot attempt is scheduled
		// to occur.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up
		// to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		rdb_next_snapshot_time?: string

		// Optional. Available snapshot periods for scheduling.
		//
		// - ONE_HOUR: Snapshot every 1 hour.
		// - SIX_HOURS: Snapshot every 6 hours.
		// - TWELVE_HOURS: Snapshot every 12 hours.
		// - TWENTY_FOUR_HOURS: Snapshot every 24 hours. Possible values:
		// ["ONE_HOUR", "SIX_HOURS", "TWELVE_HOURS", "TWENTY_FOUR_HOURS"]
		rdb_snapshot_period?: string

		// Optional. Date and time that the first snapshot was/will be
		// attempted,
		// and to which future snapshots will be aligned. If not provided,
		// the current time will be used.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution
		// and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		rdb_snapshot_start_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/maintenance_policy/$defs/weekly_maintenance_window": close({
		start_time!: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_window/$defs/start_time", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_window/$defs/start_time"]])

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
}
