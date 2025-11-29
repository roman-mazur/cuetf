package res

import "list"

#google_compute_region_per_instance_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_region_per_instance_config")
	close({
		id?: string

		// The minimal action to perform on the instance during an update.
		// Default is 'NONE'. Possible values are:
		// * REPLACE
		// * RESTART
		// * REFRESH
		// * NONE
		minimal_action?: string

		// The most disruptive action to perform on the instance during an
		// update.
		// Default is 'REPLACE'. Possible values are:
		// * REPLACE
		// * RESTART
		// * REFRESH
		// * NONE
		most_disruptive_allowed_action?: string

		// The name for this per-instance config and its corresponding
		// instance.
		name!: string

		// Region where the containing instance group manager is located
		region?: string

		// The region instance group manager this instance config is part
		// of.
		region_instance_group_manager!: string
		project?:                       string
		preserved_state?: matchN(1, [#preserved_state, list.MaxItems(1) & [...#preserved_state]])
		timeouts?: #timeouts

		// When true, deleting this config will immediately remove the
		// underlying instance.
		// When false, deleting this config will use the behavior as
		// determined by remove_instance_on_destroy.
		remove_instance_on_destroy?: bool

		// When true, deleting this config will immediately remove any
		// specified state from the underlying instance.
		// When false, deleting this config will *not* immediately remove
		// any state from the underlying instance.
		// State will be removed on the next instance recreation or
		// update.
		remove_instance_state_on_destroy?: bool
	})

	#preserved_state: close({
		disk?: matchN(1, [_#defs."/$defs/preserved_state/$defs/disk", [..._#defs."/$defs/preserved_state/$defs/disk"]])
		external_ip?: matchN(1, [_#defs."/$defs/preserved_state/$defs/external_ip", [..._#defs."/$defs/preserved_state/$defs/external_ip"]])
		internal_ip?: matchN(1, [_#defs."/$defs/preserved_state/$defs/internal_ip", [..._#defs."/$defs/preserved_state/$defs/internal_ip"]])

		// Preserved metadata defined for this instance. This is a list of
		// key->value pairs.
		metadata?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/preserved_state/$defs/disk": close({
		// A value that prescribes what should happen to the stateful disk
		// when the VM instance is deleted.
		// The available options are 'NEVER' and
		// 'ON_PERMANENT_INSTANCE_DELETION'.
		// 'NEVER' - detach the disk when the VM is deleted, but do not
		// delete the disk.
		// 'ON_PERMANENT_INSTANCE_DELETION' will delete the stateful disk
		// when the VM is permanently
		// deleted from the instance group. Default value: "NEVER"
		// Possible values: ["NEVER", "ON_PERMANENT_INSTANCE_DELETION"]
		delete_rule?: string

		// A unique device name that is reflected into the /dev/ tree of a
		// Linux operating system running within the instance.
		device_name!: string

		// The mode of the disk. Default value: "READ_WRITE" Possible
		// values: ["READ_ONLY", "READ_WRITE"]
		mode?: string

		// The URI of an existing persistent disk to attach under the
		// specified device-name in the format
		// 'projects/project-id/zones/zone/disks/disk-name'.
		source!: string
	})

	_#defs: "/$defs/preserved_state/$defs/external_ip": close({
		ip_address?: matchN(1, [_#defs."/$defs/preserved_state/$defs/external_ip/$defs/ip_address", list.MaxItems(1) & [..._#defs."/$defs/preserved_state/$defs/external_ip/$defs/ip_address"]])

		// These stateful IPs will never be released during autohealing,
		// update or VM instance recreate operations. This flag is used
		// to configure if the IP reservation should be deleted after it
		// is no longer used by the group, e.g. when the given instance
		// or the whole group is deleted. Default value: "NEVER" Possible
		// values: ["NEVER", "ON_PERMANENT_INSTANCE_DELETION"]
		auto_delete?:    string
		interface_name!: string
	})

	_#defs: "/$defs/preserved_state/$defs/external_ip/$defs/ip_address": close({
		// The URL of the reservation for this IP address.
		address?: string
	})

	_#defs: "/$defs/preserved_state/$defs/internal_ip": close({
		ip_address?: matchN(1, [_#defs."/$defs/preserved_state/$defs/internal_ip/$defs/ip_address", list.MaxItems(1) & [..._#defs."/$defs/preserved_state/$defs/internal_ip/$defs/ip_address"]])

		// These stateful IPs will never be released during autohealing,
		// update or VM instance recreate operations. This flag is used
		// to configure if the IP reservation should be deleted after it
		// is no longer used by the group, e.g. when the given instance
		// or the whole group is deleted. Default value: "NEVER" Possible
		// values: ["NEVER", "ON_PERMANENT_INSTANCE_DELETION"]
		auto_delete?:    string
		interface_name!: string
	})

	_#defs: "/$defs/preserved_state/$defs/internal_ip/$defs/ip_address": close({
		// The URL of the reservation for this IP address.
		address?: string
	})
}
