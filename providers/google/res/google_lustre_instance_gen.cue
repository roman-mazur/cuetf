package res

import "list"

#google_lustre_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_lustre_instance")
	close({
		access_rules_options?: matchN(1, [#access_rules_options, list.MaxItems(1) & [...#access_rules_options]])
		dynamic_tier_options?: matchN(1, [#dynamic_tier_options, list.MaxItems(1) & [...#dynamic_tier_options]])
		maintenance_policy?: matchN(1, [#maintenance_policy, list.MaxItems(1) & [...#maintenance_policy]])
		timeouts?: #timeouts

		// The storage capacity of the instance in gibibytes (GiB).
		// Allowed values
		// are from '9000' to '7632000', depending on the
		// 'perUnitStorageThroughput'.
		// See [Performance tiers and maximum storage
		// capacities](https://cloud.google.com/managed-lustre/docs/create-instance#performance-tiers)
		// for specific minimums, maximums, and step sizes for each
		// performance tier.
		capacity_gib!: string

		// Timestamp when the instance was created.
		create_time?: string

		// A user-readable description of the instance.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The filesystem name for this instance. This name is used by
		// client-side
		// tools, including when mounting the instance. Must be eight
		// characters or
		// less and can only contain letters and numbers.
		filesystem!: string

		// Indicates whether you want to enable support for GKE clients.
		// By default,
		// GKE clients are not supported.
		gke_support_enabled?: bool
		id?:                  string

		// The name of the Managed Lustre instance.
		//
		// * Must contain only lowercase letters, numbers, and hyphens.
		// * Must start with a letter.
		// * Must be between 1-63 characters.
		// * Must end with a number or a letter.
		instance_id!: string

		// The Cloud KMS key name to use for data encryption.
		// If not set, the instance will use Google-managed encryption
		// keys.
		// If set, the instance will use customer-managed encryption keys.
		// The key must be in the same region as the instance.
		// The key format is:
		// projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{key}
		kms_key?: string

		// Labels as key value pairs.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Mount point of the instance in the format
		// 'IP_ADDRESS@tcp:/FILESYSTEM'.
		mount_point?: string

		// Identifier. The name of the instance.
		name?: string

		// The full name of the VPC network to which the instance is
		// connected.
		// Must be in the format
		// 'projects/{project_id}/global/networks/{network_name}'.
		network!: string

		// The throughput of the instance in MBps per TiB. Valid values
		// are 125, 250,
		// 500, 1000.
		// See [Performance tiers and maximum storage
		// capacities](https://cloud.google.com/managed-lustre/docs/create-instance#performance-tiers)
		// for more information.
		//
		// If the instance is using the Dynamic tier, this field must not
		// be set or
		// must be set to zero.
		per_unit_storage_throughput?: string

		// The placement policy name for the instance in the format of
		// projects/{project}/locations/{location}/resourcePolicies/{resource_policy}
		placement_policy?: string
		project?:          string

		// The state of the instance.
		// Possible values:
		// ACTIVE
		// CREATING
		// DELETING
		// UPGRADING
		// REPAIRING
		// STOPPED
		// UPDATING
		// SUSPENDED
		state?: string

		// The reason why the instance is in a certain state (e.g.
		// SUSPENDED).
		state_reason?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Unique ID of the resource.
		// This is unrelated to the access rules which allow specifying
		// the root
		// squash uid.
		uid?: string

		// Represents a scheduled maintenance event.
		upcoming_maintenance_schedule?: [...close({
			end_time?:   string
			start_time?: string
		})]

		// Timestamp when the instance was last updated.
		update_time?: string
	})

	#access_rules_options: close({
		access_rules?: matchN(1, [_#defs."/$defs/access_rules_options/$defs/access_rules", [..._#defs."/$defs/access_rules_options/$defs/access_rules"]])

		// The user squash GID for the default access rule.
		// This user squash GID applies to all root users connecting from
		// clients
		// that are not matched by any of the access rules. If not set,
		// the default
		// is 0 (no GID squash).
		default_squash_gid?: number

		// The squash mode for the default access rule.
		// Possible values:
		// NO_SQUASH
		// ROOT_SQUASH
		default_squash_mode!: string

		// The user squash UID for the default access rule.
		// This user squash UID applies to all root users connecting from
		// clients
		// that are not matched by any of the access rules. If not set,
		// the default
		// is 0 (no UID squash).
		default_squash_uid?: number
	})

	#dynamic_tier_options: close({
		// The dynamic tier mode of the instance.
		// Possible values:
		// DISABLED
		// DEFAULT_CACHE
		mode!: string
	})

	#maintenance_policy: close({
		maintenance_exclusion_window?: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/maintenance_exclusion_window", list.MaxItems(1) & [..._#defs."/$defs/maintenance_policy/$defs/maintenance_exclusion_window"]])
		weekly_maintenance_windows!: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_windows", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_windows"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/access_rules_options/$defs/access_rules": close({
		// The IP address ranges to which to apply this access rule.
		// Accepts
		// non-overlapping CIDR ranges (e.g., '192.168.1.0/24') and IP
		// addresses
		// (e.g., '192.168.1.0').
		ip_address_ranges!: [...string]

		// The name of the access rule policy group.
		// Must be 16 characters or less and include only alphanumeric
		// characters
		// or '_'.
		name!: string

		// Squash mode for the access rule.
		// Possible values:
		// NO_SQUASH
		// ROOT_SQUASH
		squash_mode!: string
	})

	_#defs: "/$defs/maintenance_policy/$defs/maintenance_exclusion_window": close({
		end_date!: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/maintenance_exclusion_window/$defs/end_date", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/maintenance_policy/$defs/maintenance_exclusion_window/$defs/end_date"]])
		start_date!: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/maintenance_exclusion_window/$defs/start_date", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/maintenance_policy/$defs/maintenance_exclusion_window/$defs/start_date"]])
		time!: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/maintenance_exclusion_window/$defs/time", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/maintenance_policy/$defs/maintenance_exclusion_window/$defs/time"]])
	})

	_#defs: "/$defs/maintenance_policy/$defs/maintenance_exclusion_window/$defs/end_date": close({
		// Day of a month. Must be from 1 to 31 and valid for the year and
		// month, or 0
		// to specify a year by itself or a year and month where the day
		// isn't
		// significant.
		day?: number

		// Month of a year. Must be from 1 to 12, or 0 to specify a year
		// without a
		// month and day.
		month?: number

		// Year of the date. Must be from 1 to 9999, or 0 to specify a
		// date without
		// a year.
		year?: number
	})

	_#defs: "/$defs/maintenance_policy/$defs/maintenance_exclusion_window/$defs/start_date": close({
		// Day of a month. Must be from 1 to 31 and valid for the year and
		// month, or 0
		// to specify a year by itself or a year and month where the day
		// isn't
		// significant.
		day?: number

		// Month of a year. Must be from 1 to 12, or 0 to specify a year
		// without a
		// month and day.
		month?: number

		// Year of the date. Must be from 1 to 9999, or 0 to specify a
		// date without
		// a year.
		year?: number
	})

	_#defs: "/$defs/maintenance_policy/$defs/maintenance_exclusion_window/$defs/time": close({
		// Hours of a day in 24 hour format. Must be greater than or equal
		// to 0 and
		// typically must be less than or equal to 23. An API may choose
		// to allow the
		// value "24:00:00" for scenarios like business closing time.
		hours?: number

		// Minutes of an hour. Must be greater than or equal to 0 and less
		// than or
		// equal to 59.
		minutes?: number

		// Fractions of seconds, in nanoseconds. Must be greater than or
		// equal to 0
		// and less than or equal to 999,999,999.
		nanos?: number

		// Seconds of a minute. Must be greater than or equal to 0 and
		// typically must
		// be less than or equal to 59. An API may allow the value 60 if
		// it allows
		// leap-seconds.
		seconds?: number
	})

	_#defs: "/$defs/maintenance_policy/$defs/weekly_maintenance_windows": close({
		start_time!: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_windows/$defs/start_time", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_windows/$defs/start_time"]])

		// Possible values:
		// MONDAY
		// TUESDAY
		// WEDNESDAY
		// THURSDAY
		// FRIDAY
		// SATURDAY
		// SUNDAY
		day_of_week!: string
	})

	_#defs: "/$defs/maintenance_policy/$defs/weekly_maintenance_windows/$defs/start_time": close({
		// Hours of a day in 24 hour format. Must be greater than or equal
		// to 0 and
		// typically must be less than or equal to 23. An API may choose
		// to allow the
		// value "24:00:00" for scenarios like business closing time.
		hours?: number

		// Minutes of an hour. Must be greater than or equal to 0 and less
		// than or
		// equal to 59.
		minutes?: number

		// Fractions of seconds, in nanoseconds. Must be greater than or
		// equal to 0
		// and less than or equal to 999,999,999.
		nanos?: number

		// Seconds of a minute. Must be greater than or equal to 0 and
		// typically must
		// be less than or equal to 59. An API may allow the value 60 if
		// it allows
		// leap-seconds.
		seconds?: number
	})
}
