package res

import "list"

#google_compute_instance_group_manager: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_instance_group_manager")
	close({
		// The base instance name to use for instances in this group. The
		// value must be a valid RFC1035 name. Supported characters are
		// lowercase letters, numbers, and hyphens (-). Instances are
		// named by appending a hyphen and a random four-character string
		// to the base instance name.
		base_instance_name!: string
		all_instances_config?: matchN(1, [#all_instances_config, list.MaxItems(1) & [...#all_instances_config]])

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional textual description of the instance group manager.
		description?: string

		// The fingerprint of the instance group manager.
		fingerprint?: string

		// The full URL of the instance group created by the manager.
		instance_group?: string

		// The unique identifier number for the resource. This identifier
		// is defined by the server.
		instance_group_manager_id?: number

		// Pagination behavior of the listManagedInstances API method for
		// this managed instance group. Valid values are: "PAGELESS",
		// "PAGINATED". If PAGELESS (default), Pagination is disabled for
		// the group's listManagedInstances API method. maxResults and
		// pageToken query parameters are ignored and all instances are
		// returned in a single response. If PAGINATED, pagination is
		// enabled, maxResults and pageToken query parameters are
		// respected.
		list_managed_instances_results?: string
		id?:                             string

		// The name of the instance group manager. Must be 1-63 characters
		// long and comply with RFC1035. Supported characters include
		// lowercase letters, numbers, and hyphens.
		name!: string

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string

		// The URL of the created resource.
		self_link?: string

		// The status of this managed instance group.
		status?: [...close({
			all_instances_config?: [...close({
				current_revision?: string
				effective?:        bool
			})]
			is_stable?: bool
			stateful?: [...close({
				has_stateful_config?: bool
				per_instance_configs?: [...close({
					all_effective?: bool
				})]
			})]
			version_target?: [...close({
				is_reached?: bool
			})]
		})]
		operation?: string
		auto_healing_policies?: matchN(1, [#auto_healing_policies, list.MaxItems(1) & [...#auto_healing_policies]])
		instance_lifecycle_policy?: matchN(1, [#instance_lifecycle_policy, list.MaxItems(1) & [...#instance_lifecycle_policy]])

		// The full URL of all target pools to which new instances in the
		// group are added. Updating the target pools attribute does not
		// affect existing instances.
		target_pools?: [...string]
		named_port?: matchN(1, [#named_port, [...#named_port]])
		resource_policies?: matchN(1, [#resource_policies, list.MaxItems(1) & [...#resource_policies]])
		standby_policy?: matchN(1, [#standby_policy, list.MaxItems(1) & [...#standby_policy]])
		stateful_disk?: matchN(1, [#stateful_disk, [...#stateful_disk]])
		stateful_external_ip?: matchN(1, [#stateful_external_ip, [...#stateful_external_ip]])
		stateful_internal_ip?: matchN(1, [#stateful_internal_ip, [...#stateful_internal_ip]])
		timeouts?: #timeouts
		update_policy?: matchN(1, [#update_policy, list.MaxItems(1) & [...#update_policy]])
		version!: matchN(1, [#version, [_, ...] & [...#version]])

		// The target number of running instances for this managed
		// instance group. This value should always be explicitly set
		// unless this resource is attached to an autoscaler, in which
		// case it should never be set. Defaults to 0.
		target_size?: number

		// The target number of stopped instances for this managed
		// instance group.
		target_stopped_size?: number

		// The target number of suspended instances for this managed
		// instance group.
		target_suspended_size?: number

		// Whether to wait for all instances to be created/updated before
		// returning. Note that if this is set to true and the operation
		// does not succeed, Terraform will continue trying until it
		// times out.
		wait_for_instances?: bool

		// When used with wait_for_instances specifies the status to wait
		// for. When STABLE is specified this resource will wait until
		// the instances are stable before returning. When UPDATED is
		// set, it will wait for the version target to be reached and any
		// per instance configs to be effective and all instances configs
		// to be effective as well as all instances to be stable before
		// returning.
		wait_for_instances_status?: string

		// The zone that instances in this group should be created in.
		zone?: string
	})

	#all_instances_config: close({
		// The label key-value pairs that you want to patch onto the
		// instance,
		labels?: [string]: string

		// The metadata key-value pairs that you want to patch onto the
		// instance. For more information, see Project and instance
		// metadata,
		metadata?: [string]: string
	})

	#auto_healing_policies: close({
		// The health check resource that signals autohealing.
		health_check!: string

		// The number of seconds that the managed instance group waits
		// before it applies autohealing policies to new instances or
		// recently recreated instances. Between 0 and 3600.
		initial_delay_sec!: number
	})

	#instance_lifecycle_policy: close({
		// Default behavior for all instance or health check failures.
		default_action_on_failure?: string

		// Specifies whether to apply the group's latest configuration
		// when repairing a VM. Valid options are: YES, NO. If YES and
		// you updated the group's instance template or per-instance
		// configurations after the VM was created, then these changes
		// are applied when VM is repaired. If NO (default), then updates
		// are applied in accordance with the group's update policy type.
		force_update_on_repair?: string
	})

	#named_port: close({
		// The name of the port.
		name!: string

		// The port number.
		port!: number
	})

	#resource_policies: close({
		// The URL of the workload policy that is specified for this
		// managed instance group. It can be a full or partial URL.
		workload_policy?: string
	})

	#standby_policy: close({
		// Specifies the number of seconds that the MIG should wait to
		// suspend or stop a VM after that VM was created. The initial
		// delay gives the initialization script the time to prepare your
		// VM for a quick scale out. The value of initial delay must be
		// between 0 and 3600 seconds. The default value is 0.
		initial_delay_sec?: number

		// Defines how a MIG resumes or starts VMs from a standby pool
		// when the group scales out. The default mode is "MANUAL".
		mode?: string
	})

	#stateful_disk: close({
		// A value that prescribes what should happen to the stateful disk
		// when the VM instance is deleted. The available options are
		// NEVER and ON_PERMANENT_INSTANCE_DELETION. NEVER - detach the
		// disk when the VM is deleted, but do not delete the disk.
		// ON_PERMANENT_INSTANCE_DELETION will delete the stateful disk
		// when the VM is permanently deleted from the instance group.
		// The default is NEVER.
		delete_rule?: string

		// The device name of the disk to be attached.
		device_name!: string
	})

	#stateful_external_ip: close({
		// A value that prescribes what should happen to an associated
		// static Address resource when a VM instance is permanently
		// deleted. The available options are NEVER and
		// ON_PERMANENT_INSTANCE_DELETION. NEVER - detach the IP when the
		// VM is deleted, but do not delete the address resource.
		// ON_PERMANENT_INSTANCE_DELETION will delete the stateful
		// address when the VM is permanently deleted from the instance
		// group. The default is NEVER.
		delete_rule?: string

		// The network interface name
		interface_name?: string
	})

	#stateful_internal_ip: close({
		// A value that prescribes what should happen to an associated
		// static Address resource when a VM instance is permanently
		// deleted. The available options are NEVER and
		// ON_PERMANENT_INSTANCE_DELETION. NEVER - detach the IP when the
		// VM is deleted, but do not delete the address resource.
		// ON_PERMANENT_INSTANCE_DELETION will delete the stateful
		// address when the VM is permanently deleted from the instance
		// group. The default is NEVER.
		delete_rule?: string

		// The network interface name
		interface_name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#update_policy: close({
		// Specifies a fixed number of VM instances. This must be a
		// positive integer. Conflicts with max_surge_percent. Both
		// cannot be 0
		max_surge_fixed?: number

		// Specifies a percentage of instances between 0 to 100%,
		// inclusive. For example, specify 80 for 80%. Conflicts with
		// max_surge_fixed.
		max_surge_percent?: number

		// Specifies a fixed number of VM instances. This must be a
		// positive integer.
		max_unavailable_fixed?: number

		// Specifies a percentage of instances between 0 to 100%,
		// inclusive. For example, specify 80 for 80%.
		max_unavailable_percent?: number

		// Minimal action to be taken on an instance. You can specify
		// either NONE to forbid any actions, REFRESH to update without
		// stopping instances, RESTART to restart existing instances or
		// REPLACE to delete and create new instances from the target
		// template. If you specify a REFRESH, the Updater will attempt
		// to perform that action only. However, if the Updater
		// determines that the minimal action you specify is not enough
		// to perform the update, it might perform a more disruptive
		// action.
		minimal_action!: string

		// Most disruptive action that is allowed to be taken on an
		// instance. You can specify either NONE to forbid any actions,
		// REFRESH to allow actions that do not need instance restart,
		// RESTART to allow actions that can be applied without instance
		// replacing or REPLACE to allow all possible actions. If the
		// Updater determines that the minimal update action needed is
		// more disruptive than most disruptive allowed action you
		// specify it will not perform the update at all.
		most_disruptive_allowed_action?: string

		// The instance replacement method for managed instance groups.
		// Valid values are: "RECREATE", "SUBSTITUTE". If SUBSTITUTE
		// (default), the group replaces VM instances with new instances
		// that have randomly generated names. If RECREATE, instance
		// names are preserved. You must also set max_unavailable_fixed
		// or max_unavailable_percent to be greater than 0.
		replacement_method?: string

		// The type of update process. You can specify either PROACTIVE so
		// that the instance group manager proactively executes actions
		// in order to bring instances to their target versions or
		// OPPORTUNISTIC so that no action is proactively executed but
		// the update will be performed as part of other actions (for
		// example, resizes or recreateInstances calls).
		type!: string
	})

	#version: close({
		target_size?: matchN(1, [_#defs."/$defs/version/$defs/target_size", list.MaxItems(1) & [..._#defs."/$defs/version/$defs/target_size"]])

		// The full URL to an instance template from which all new
		// instances of this version will be created.
		instance_template!: string

		// Version name.
		name?: string
	})

	_#defs: "/$defs/version/$defs/target_size": close({
		// The number of instances which are managed for this version.
		// Conflicts with percent.
		fixed?: number

		// The number of instances (calculated as percentage) which are
		// managed for this version. Conflicts with fixed. Note that when
		// using percent, rounding will be in favor of explicitly set
		// target_size values; a managed instance group with 2 instances
		// and 2 versions, one of which has a target_size.percent of 60
		// will create 2 instances of that version.
		percent?: number
	})
}
