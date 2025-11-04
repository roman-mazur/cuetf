package res

import "list"

#google_memcache_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_memcache_instance")
	close({
		// The full name of the GCE network to connect the instance to. If
		// not provided,
		// 'default' will be used.
		authorized_network?: string

		// Creation timestamp in RFC3339 text format.
		create_time?: string

		// Whether Terraform will be prevented from destroying the
		// instance.
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is not set to false in
		// Terraform state.
		// When the field is set to true or unset in Terraform state, a
		// 'terraform apply'
		// or 'terraform destroy' that would delete the instance will
		// fail.
		// When the field is set to false, deleting the instance is
		// allowed.
		deletion_protection?: bool

		// Endpoint for Discovery API
		discovery_endpoint?: string

		// A user-visible name for the instance.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Resource labels to represent user-provided metadata.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Output only. Published maintenance schedule.
		maintenance_schedule?: [...close({
			end_time?:               string
			schedule_deadline_time?: string
			start_time?:             string
		})]

		// The full version of memcached server running on this instance.
		memcache_full_version?: string

		// Additional information about the instance state, if available.
		memcache_nodes?: [...close({
			host?:    string
			node_id?: string
			port?:    number
			state?:   string
			zone?:    string
		})]

		// The major version of Memcached software. If not provided,
		// latest supported version will be used.
		// Currently the latest supported major version is MEMCACHE_1_5.
		// The minor version will be automatically
		// determined by our system based on the latest supported minor
		// version. Default value: "MEMCACHE_1_5" Possible values:
		// ["MEMCACHE_1_5", "MEMCACHE_1_6_15"]
		memcache_version?: string
		maintenance_policy?: matchN(1, [#maintenance_policy, list.MaxItems(1) & [...#maintenance_policy]])
		memcache_parameters?: matchN(1, [#memcache_parameters, list.MaxItems(1) & [...#memcache_parameters]])
		node_config!: matchN(1, [#node_config, list.MaxItems(1) & [_, ...] & [...#node_config]])
		timeouts?: #timeouts

		// The resource name of the instance.
		name!: string

		// Number of nodes in the memcache instance.
		node_count!: number
		project?:    string

		// The region of the Memcache instance. If it is not provided, the
		// provider region is used.
		region?: string

		// Contains the name of allocated IP address ranges associated
		// with
		// the private service access connection for example,
		// "test-default"
		// associated with IP range 10.0.0.0/29.
		reserved_ip_range_id?: [...string]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Zones where memcache nodes should be provisioned. If not
		// provided, all zones will be used.
		zones?: [...string]
	})

	#maintenance_policy: close({
		// Output only. The time when the policy was created.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits
		create_time?: string
		weekly_maintenance_window!: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_window", [_, ...] & [..._#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_window"]])

		// Optional. Description of what this policy is for.
		// Create/Update methods return INVALID_ARGUMENT if the
		// length is greater than 512.
		description?: string

		// Output only. The time when the policy was updated.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		update_time?: string
	})

	#memcache_parameters: close({
		// This is a unique ID associated with this set of parameters.
		id?: string

		// User-defined set of parameters to use in the memcache process.
		params?: [string]: string
	})

	#node_config: close({
		// Number of CPUs per node.
		cpu_count!: number

		// Memory size in Mebibytes for each memcache node.
		memory_size_mb!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/maintenance_policy/$defs/weekly_maintenance_window": close({
		start_time!: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_window/$defs/start_time", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/maintenance_policy/$defs/weekly_maintenance_window/$defs/start_time"]])

		// Required. The day of week that maintenance updates occur.
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

		// Required. The length of the maintenance window, ranging from 3
		// hours to 8 hours.
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s".
		duration!: string
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
