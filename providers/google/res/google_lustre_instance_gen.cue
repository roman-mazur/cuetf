package res

import "list"

#google_lustre_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_lustre_instance")
	close({
		access_rules_options?: matchN(1, [#access_rules_options, list.MaxItems(1) & [...#access_rules_options]])
		maintenance_policy?: matchN(1, [#maintenance_policy, list.MaxItems(1) & [...#maintenance_policy]])
		timeouts?: #timeouts

		// The storage capacity of the instance in gibibytes (GiB).
		// Allowed values
		// are from '18000' to '954000', in increments of 9000.
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

		// The KMS key id to use for encryption of the Lustre instance.
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

		// The throughput of the instance in MB/s/TiB.
		// Valid values are 125, 250, 500, 1000.
		per_unit_storage_throughput!: string

		// The placement policy name for the instance in the format of
		// projects/{project}/locations/{location}/resourcePolicies/{resource_policy}
		placement_policy?: string
		project?:          string

		// The state of the instance.
		// Please see
		// https://cloud.google.com/managed-lustre/docs/reference/rest/v1/projects.locations.instances#state
		// for values
		state?: string

		// The reason why the instance is in a certain state.
		state_reason?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Timestamp when the instance was last updated.
		update_time?: string
	})

	#access_rules_options: close({
		access_rules?: matchN(1, [_#defs."/$defs/access_rules_options/$defs/access_rules", [..._#defs."/$defs/access_rules_options/$defs/access_rules"]])

		// The GID to map the root user to when root squashing is enabled
		// (e.g., 65534 for nobody).
		default_squash_gid?: number

		// Set to "ROOT_SQUASH" to enable root squashing by default.
		// Other values include "NO_SQUASH". Possible values:
		// ["ROOT_SQUASH", "NO_SQUASH"]
		default_squash_mode!: string

		// The UID to map the root user to when root squashing is enabled
		// (e.g., 65534 for nobody).
		default_squash_uid?: number
	})

	#maintenance_policy: close({
		maintenance_exclusion_window?: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/maintenance_exclusion_window", list.MaxItems(1) & [..._#defs."/$defs/maintenance_policy/$defs/maintenance_exclusion_window"]])
		weekly_maintenance_windows?: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_windows", list.MaxItems(1) & [..._#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_windows"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/access_rules_options/$defs/access_rules": close({
		// An array of IP address strings or CIDR ranges that this rule
		// applies to.
		ip_address_ranges!: [...string]

		// A unique identifier for the access rule.
		name!: string

		// The squash mode for this specific rule. Currently, only
		// "NO_SQUASH"
		// is supported for exceptions. Possible values: ["NO_SQUASH"]
		squash_mode!: string
	})

	_#defs: "/$defs/maintenance_policy/$defs/maintenance_exclusion_window": close({
		end_date!: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/maintenance_exclusion_window/$defs/end_date", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/maintenance_policy/$defs/maintenance_exclusion_window/$defs/end_date"]])
		start_date!: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/maintenance_exclusion_window/$defs/start_date", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/maintenance_policy/$defs/maintenance_exclusion_window/$defs/start_date"]])
		time!: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/maintenance_exclusion_window/$defs/time", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/maintenance_policy/$defs/maintenance_exclusion_window/$defs/time"]])
	})

	_#defs: "/$defs/maintenance_policy/$defs/maintenance_exclusion_window/$defs/end_date": close({
		// Day of a month. Must be from 1 to 31 and valid for the year and
		// month.
		day?: number

		// Month of a year. Must be from 1 to 12.
		month?: number

		// Year of the date. Must be from 1 to 9999, or 0 for recurring.
		year?: number
	})

	_#defs: "/$defs/maintenance_policy/$defs/maintenance_exclusion_window/$defs/start_date": close({
		// Day of a month. Must be from 1 to 31 and valid for the year and
		// month.
		day?: number

		// Month of a year. Must be from 1 to 12.
		month?: number

		// Year of the date. Must be from 1 to 9999, or 0 for recurring.
		year?: number
	})

	_#defs: "/$defs/maintenance_policy/$defs/maintenance_exclusion_window/$defs/time": close({
		// Hours of day in 24 hour format. Should be from 0 to 23.
		hours?: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes?: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos?: number

		// Seconds of minutes of the time. Must be from 0 to 59.
		seconds?: number
	})

	_#defs: "/$defs/maintenance_policy/$defs/weekly_maintenance_windows": close({
		start_time!: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_windows/$defs/start_time", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_windows/$defs/start_time"]])

		// Day of the week for the maintenance window. Possible values:
		// ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY",
		// "FRIDAY", "SATURDAY"]
		day_of_week!: string
	})

	_#defs: "/$defs/maintenance_policy/$defs/weekly_maintenance_windows/$defs/start_time": close({
		// Hours of day in 24 hour format. Should be from 0 to 23.
		hours?: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes?: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos?: number

		// Seconds of minutes of the time. Must be from 0 to 59.
		seconds?: number
	})
}
