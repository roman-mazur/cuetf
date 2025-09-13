package res

import "list"

#google_compute_reservation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_reservation")
	close({
		// Full or partial URL to a parent commitment. This field displays
		// for
		// reservations that are tied to a commitment.
		commitment?: string

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// Absolute time in future when the reservation will be
		// auto-deleted by Compute Engine. Timestamp is represented in
		// RFC3339 text format.
		// Cannot be used with delete_after_duration.
		delete_at_time?: string

		// An optional description of this resource.
		description?: string
		id?:          string

		// Name of the resource. Provided by the client when the resource
		// is
		// created. The name must be 1-63 characters long, and comply with
		// RFC1035. Specifically, the name must be 1-63 characters long
		// and match
		// the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
		// the
		// first character must be a lowercase letter, and all following
		// characters must be a dash, lowercase letter, or digit, except
		// the last
		// character, which cannot be a dash.
		name!:    string
		project?: string
		delete_after_duration?: matchN(1, [#delete_after_duration, list.MaxItems(1) & [...#delete_after_duration]])

		// When set to true, only VMs that target this reservation by name
		// can
		// consume this reservation. Otherwise, it can be consumed by VMs
		// with
		// affinity for any reservation. Defaults to false.
		specific_reservation_required?: bool
		reservation_sharing_policy?: matchN(1, [#reservation_sharing_policy, list.MaxItems(1) & [...#reservation_sharing_policy]])
		share_settings?: matchN(1, [#share_settings, list.MaxItems(1) & [...#share_settings]])
		specific_reservation?: matchN(1, [#specific_reservation, list.MaxItems(1) & [_, ...] & [...#specific_reservation]])
		timeouts?:  #timeouts
		self_link?: string

		// The status of the reservation.
		status?: string

		// The zone where the reservation is made.
		zone!: string
	})

	#delete_after_duration: close({
		// Number of nanoseconds for the auto-delete duration.
		nanos?: number

		// Number of seconds for the auto-delete duration.
		seconds?: string
	})

	#reservation_sharing_policy: close({
		// Sharing config for all Google Cloud services. Possible values:
		// ["ALLOW_ALL", "DISALLOW_ALL"]
		service_share_type?: string
	})

	#share_settings: close({
		project_map?: matchN(1, [_#defs."/$defs/share_settings/$defs/project_map", [..._#defs."/$defs/share_settings/$defs/project_map"]])

		// Type of sharing for this shared-reservation Possible values:
		// ["LOCAL", "SPECIFIC_PROJECTS"]
		share_type?: string
	})

	#specific_reservation: close({
		// The number of resources that are allocated.
		count!: number
		instance_properties?: matchN(1, [_#defs."/$defs/specific_reservation/$defs/instance_properties", list.MaxItems(1) & [..._#defs."/$defs/specific_reservation/$defs/instance_properties"]])

		// How many instances are in use.
		in_use_count?: number

		// Specifies the instance template to create the reservation. If
		// you use this field, you must exclude the
		// instanceProperties field.
		source_instance_template?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/share_settings/$defs/project_map": close({
		id!: string

		// The project id/number, should be same as the key of this
		// project config in the project map.
		project_id?: string
	})

	_#defs: "/$defs/specific_reservation/$defs/instance_properties": close({
		guest_accelerators?: matchN(1, [_#defs."/$defs/specific_reservation/$defs/instance_properties/$defs/guest_accelerators", [..._#defs."/$defs/specific_reservation/$defs/instance_properties/$defs/guest_accelerators"]])
		local_ssds?: matchN(1, [_#defs."/$defs/specific_reservation/$defs/instance_properties/$defs/local_ssds", [..._#defs."/$defs/specific_reservation/$defs/instance_properties/$defs/local_ssds"]])

		// The name of the machine type to reserve.
		machine_type!: string

		// The minimum CPU platform for the reservation. For example,
		// '"Intel Skylake"'. See
		// the CPU platform availability
		// reference](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform#availablezones)
		// for information on available CPU platforms.
		min_cpu_platform?: string
	})

	_#defs: "/$defs/specific_reservation/$defs/instance_properties/$defs/guest_accelerators": close({
		// The number of the guest accelerator cards exposed to
		// this instance.
		accelerator_count!: number

		// The full or partial URL of the accelerator type to
		// attach to this instance. For example:
		// 'projects/my-project/zones/us-central1-c/acceleratorTypes/nvidia-tesla-p100'
		//
		// If you are creating an instance template, specify only the
		// accelerator name.
		accelerator_type!: string
	})

	_#defs: "/$defs/specific_reservation/$defs/instance_properties/$defs/local_ssds": close({
		// The size of the disk in base-2 GB.
		disk_size_gb!: number

		// The disk interface to use for attaching this disk. Default
		// value: "SCSI" Possible values: ["SCSI", "NVME"]
		interface?: string
	})
}
