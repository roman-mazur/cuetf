package res

import "list"

#google_compute_resource_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_resource_policy")
	close({
		// An optional description of this resource. Provide this property
		// when you create the resource.
		description?: string
		disk_consistency_group_policy?: matchN(1, [#disk_consistency_group_policy, list.MaxItems(1) & [...#disk_consistency_group_policy]])
		id?: string

		// The name of the resource, provided by the client when initially
		// creating
		// the resource. The resource name must be 1-63 characters long,
		// and comply
		// with RFC1035. Specifically, the name must be 1-63 characters
		// long and
		// match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])'? which
		// means the
		// first character must be a lowercase letter, and all following
		// characters
		// must be a dash, lowercase letter, or digit, except the last
		// character,
		// which cannot be a dash.
		name!:    string
		project?: string
		group_placement_policy?: matchN(1, [#group_placement_policy, list.MaxItems(1) & [...#group_placement_policy]])

		// Region where resource policy resides.
		region?: string
		instance_schedule_policy?: matchN(1, [#instance_schedule_policy, list.MaxItems(1) & [...#instance_schedule_policy]])
		snapshot_schedule_policy?: matchN(1, [#snapshot_schedule_policy, list.MaxItems(1) & [...#snapshot_schedule_policy]])
		self_link?: string
		timeouts?:  #timeouts
		workload_policy?: matchN(1, [#workload_policy, list.MaxItems(1) & [...#workload_policy]])
	})

	#disk_consistency_group_policy: close({
		// Enable disk consistency on the resource policy.
		enabled!: bool
	})

	#group_placement_policy: close({
		// The number of availability domains instances will be spread
		// across. If two instances are in different
		// availability domain, they will not be put in the same low
		// latency network
		availability_domain_count?: number

		// Collocation specifies whether to place VMs inside the same
		// availability domain on the same low-latency network.
		// Specify 'COLLOCATED' to enable collocation. Can only be
		// specified with 'vm_count'. If compute instances are created
		// with a COLLOCATED policy, then exactly 'vm_count' instances
		// must be created at the same time with the resource policy
		// attached. Possible values: ["COLLOCATED"]
		collocation?: string

		// Specifies the shape of the GPU slice, in slice based GPU
		// families eg. A4X.
		gpu_topology?: string

		// Number of VMs in this placement group. Google does not
		// recommend that you use this field
		// unless you use a compact policy and you want your policy to
		// work only if it contains this
		// exact number of VMs.
		vm_count?: number
	})

	#instance_schedule_policy: close({
		// The expiration time of the schedule. The timestamp is an
		// RFC3339 string.
		expiration_time?: string

		// The start time of the schedule. The timestamp is an RFC3339
		// string.
		start_time?: string
		vm_start_schedule?: matchN(1, [_#defs."/$defs/instance_schedule_policy/$defs/vm_start_schedule", list.MaxItems(1) & [..._#defs."/$defs/instance_schedule_policy/$defs/vm_start_schedule"]])

		// Specifies the time zone to be used in interpreting the
		// schedule. The value of this field must be a time zone name
		// from the tz database: http://en.wikipedia.org/wiki/Tz_database.
		time_zone!: string
		vm_stop_schedule?: matchN(1, [_#defs."/$defs/instance_schedule_policy/$defs/vm_stop_schedule", list.MaxItems(1) & [..._#defs."/$defs/instance_schedule_policy/$defs/vm_stop_schedule"]])
	})

	#snapshot_schedule_policy: close({
		retention_policy?: matchN(1, [_#defs."/$defs/snapshot_schedule_policy/$defs/retention_policy", list.MaxItems(1) & [..._#defs."/$defs/snapshot_schedule_policy/$defs/retention_policy"]])
		schedule?: matchN(1, [_#defs."/$defs/snapshot_schedule_policy/$defs/schedule", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/snapshot_schedule_policy/$defs/schedule"]])
		snapshot_properties?: matchN(1, [_#defs."/$defs/snapshot_schedule_policy/$defs/snapshot_properties", list.MaxItems(1) & [..._#defs."/$defs/snapshot_schedule_policy/$defs/snapshot_properties"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#workload_policy: close({
		// The accelerator topology. This field can be set only when the
		// workload policy type is HIGH_THROUGHPUT
		// and cannot be set if max topology distance is set.
		accelerator_topology?: string

		// The maximum topology distance. This field can be set only when
		// the workload policy type is HIGH_THROUGHPUT
		// and cannot be set if accelerator topology is set. Possible
		// values: ["BLOCK", "CLUSTER", "SUBBLOCK"]
		max_topology_distance?: string

		// The type of workload policy. Possible values:
		// ["HIGH_AVAILABILITY", "HIGH_THROUGHPUT"]
		type!: string
	})

	_#defs: "/$defs/instance_schedule_policy/$defs/vm_start_schedule": close({
		// Specifies the frequency for the operation, using the unix-cron
		// format.
		schedule!: string
	})

	_#defs: "/$defs/instance_schedule_policy/$defs/vm_stop_schedule": close({
		// Specifies the frequency for the operation, using the unix-cron
		// format.
		schedule!: string
	})

	_#defs: "/$defs/snapshot_schedule_policy/$defs/retention_policy": close({
		// Maximum age of the snapshot that is allowed to be kept.
		max_retention_days!: number

		// Specifies the behavior to apply to scheduled snapshots when
		// the source disk is deleted. Default value:
		// "KEEP_AUTO_SNAPSHOTS" Possible values: ["KEEP_AUTO_SNAPSHOTS",
		// "APPLY_RETENTION_POLICY"]
		on_source_disk_delete?: string
	})

	_#defs: "/$defs/snapshot_schedule_policy/$defs/schedule": close({
		daily_schedule?: matchN(1, [_#defs."/$defs/snapshot_schedule_policy/$defs/schedule/$defs/daily_schedule", list.MaxItems(1) & [..._#defs."/$defs/snapshot_schedule_policy/$defs/schedule/$defs/daily_schedule"]])
		hourly_schedule?: matchN(1, [_#defs."/$defs/snapshot_schedule_policy/$defs/schedule/$defs/hourly_schedule", list.MaxItems(1) & [..._#defs."/$defs/snapshot_schedule_policy/$defs/schedule/$defs/hourly_schedule"]])
		weekly_schedule?: matchN(1, [_#defs."/$defs/snapshot_schedule_policy/$defs/schedule/$defs/weekly_schedule", list.MaxItems(1) & [..._#defs."/$defs/snapshot_schedule_policy/$defs/schedule/$defs/weekly_schedule"]])
	})

	_#defs: "/$defs/snapshot_schedule_policy/$defs/schedule/$defs/daily_schedule": close({
		// Defines a schedule with units measured in days. The value
		// determines how many days pass between the start of each cycle.
		// Days in cycle for snapshot schedule policy must be 1.
		days_in_cycle!: number

		// This must be in UTC format that resolves to one of
		// 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example,
		// both 13:00-5 and 08:00 are valid.
		start_time!: string
	})

	_#defs: "/$defs/snapshot_schedule_policy/$defs/schedule/$defs/hourly_schedule": close({
		// The number of hours between snapshots.
		hours_in_cycle!: number

		// Time within the window to start the operations.
		// It must be in an hourly format "HH:MM",
		// where HH : [00-23] and MM : [00] GMT. eg: 21:00
		start_time!: string
	})

	_#defs: "/$defs/snapshot_schedule_policy/$defs/schedule/$defs/weekly_schedule": close({
		day_of_weeks?: matchN(1, [_#defs."/$defs/snapshot_schedule_policy/$defs/schedule/$defs/weekly_schedule/$defs/day_of_weeks", list.MaxItems(7) & [_, ...] & [..._#defs."/$defs/snapshot_schedule_policy/$defs/schedule/$defs/weekly_schedule/$defs/day_of_weeks"]])
	})

	_#defs: "/$defs/snapshot_schedule_policy/$defs/schedule/$defs/weekly_schedule/$defs/day_of_weeks": close({
		// The day of the week to create the snapshot. e.g. MONDAY
		// Possible values: ["MONDAY", "TUESDAY", "WEDNESDAY",
		// "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
		day!: string

		// Time within the window to start the operations.
		// It must be in format "HH:MM", where HH : [00-23] and MM :
		// [00-00] GMT.
		start_time!: string
	})

	_#defs: "/$defs/snapshot_schedule_policy/$defs/snapshot_properties": close({
		// Creates the new snapshot in the snapshot chain labeled with the
		// specified name. The chain name must be 1-63 characters long and
		// comply
		// with RFC1035.
		chain_name?: string

		// Whether to perform a 'guest aware' snapshot.
		guest_flush?: bool

		// A set of key-value pairs.
		labels?: [string]: string

		// Cloud Storage bucket location to store the auto snapshot
		// (regional or multi-regional)
		storage_locations?: [...string]
	})
}
