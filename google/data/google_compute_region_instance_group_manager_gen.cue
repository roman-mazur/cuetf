package data

#google_compute_region_instance_group_manager: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_region_instance_group_manager")
	close({
		// Specifies configuration that overrides the instance template
		// configuration for the group.
		all_instances_config?: [...close({
			labels?: [string]:   string
			metadata?: [string]: string
		})]

		// The autohealing policies for this managed instance group. You
		// can specify only one value.
		auto_healing_policies?: [...close({
			health_check?:      string
			initial_delay_sec?: number
		})]

		// The base instance name to use for instances in this group. The
		// value must be a valid RFC1035 name. Supported characters are
		// lowercase letters, numbers, and hyphens (-). Instances are
		// named by appending a hyphen and a random four-character string
		// to the base instance name.
		base_instance_name?: string

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional textual description of the instance group manager.
		description?: string

		// The shape to which the group converges either proactively or on
		// resize events (depending on the value set in
		// updatePolicy.instanceRedistributionType).
		distribution_policy_target_shape?: string

		// The distribution policy for this managed instance group. You
		// can specify one or more values.
		distribution_policy_zones?: [...string]

		// The fingerprint of the instance group manager.
		fingerprint?: string

		// The flexibility policy for this managed instance group.
		// Instance flexibility allowing MIG to create VMs from multiple
		// types of machines. Instance flexibility configuration on MIG
		// overrides instance template configuration.
		instance_flexibility_policy?: [...close({
			instance_selections?: [...close({
				machine_types?: [...string]
				name?: string
				rank?: number
			})]
		})]

		// The full URL of the instance group created by the manager.
		instance_group?: string

		// The unique identifier number for the resource. This identifier
		// is defined by the server.
		instance_group_manager_id?: number

		// The instance lifecycle policy for this managed instance group.
		instance_lifecycle_policy?: [...close({
			default_action_on_failure?: string
			force_update_on_repair?:    string
		})]

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
		name?: string

		// The named port configuration.
		named_port?: [...close({
			name?: string
			port?: number
		})]

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string

		// The region where the managed instance group resides.
		region?: string

		// The URL of the created resource.
		self_link?: string

		// Standby policy for stopped and suspended instances.
		standby_policy?: [...close({
			initial_delay_sec?: number
			mode?:              string
		})]

		// Disks created on the instances that will be preserved on
		// instance delete, update, etc. Structure is documented below.
		// For more information see the official documentation. Proactive
		// cross zone instance redistribution must be disabled before you
		// can update stateful disks on existing instance group managers.
		// This can be controlled via the update_policy.
		stateful_disk?: [...close({
			delete_rule?: string
			device_name?: string
		})]

		// External IPs considered stateful by the instance group.
		stateful_external_ip?: [...close({
			delete_rule?:    string
			interface_name?: string
		})]

		// External IPs considered stateful by the instance group.
		stateful_internal_ip?: [...close({
			delete_rule?:    string
			interface_name?: string
		})]

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

		// The full URL of all target pools to which new instances in the
		// group are added. Updating the target pools attribute does not
		// affect existing instances.
		target_pools?: [...string]

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

		// The update policy for this managed instance group.
		update_policy?: [...close({
			instance_redistribution_type?:   string
			max_surge_fixed?:                number
			max_surge_percent?:              number
			max_unavailable_fixed?:          number
			max_unavailable_percent?:        number
			minimal_action?:                 string
			most_disruptive_allowed_action?: string
			replacement_method?:             string
			type?:                           string
		})]

		// Application versions managed by this instance group. Each
		// version deals with a specific instance template, allowing
		// canary release scenarios.
		version?: [...close({
			instance_template?: string
			name?:              string
			target_size?: [...close({
				fixed?:   number
				percent?: number
			})]
		})]

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
	})
}
