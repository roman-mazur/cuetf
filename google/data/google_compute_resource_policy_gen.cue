package data

#google_compute_resource_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_resource_policy")
	close({
		// An optional description of this resource. Provide this property
		// when you create the resource.
		description?: string

		// Replication consistency group for asynchronous disk
		// replication.
		disk_consistency_group_policy?: [...close({
			enabled?: bool
		})]

		// Resource policy for instances used for placement configuration.
		group_placement_policy?: [...close({
			availability_domain_count?: number
			collocation?:               string
			gpu_topology?:              string
			vm_count?:                  number
		})]
		id?: string

		// Resource policy for scheduling instance operations.
		instance_schedule_policy?: [...close({
			expiration_time?: string
			start_time?:      string
			time_zone?:       string
			vm_start_schedule?: [...close({
				schedule?: string
			})]
			vm_stop_schedule?: [...close({
				schedule?: string
			})]
		})]

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

		// Region where resource policy resides.
		region?:    string
		self_link?: string

		// Policy for creating snapshots of persistent disks.
		snapshot_schedule_policy?: [...close({
			retention_policy?: [...close({
				max_retention_days?:    number
				on_source_disk_delete?: string
			})]
			schedule?: [...close({
				daily_schedule?: [...close({
					days_in_cycle?: number
					start_time?:    string
				})]
				hourly_schedule?: [...close({
					hours_in_cycle?: number
					start_time?:     string
				})]
				weekly_schedule?: [...close({
					day_of_weeks?: [...close({
						day?:        string
						start_time?: string
					})]
				})]
			})]
			snapshot_properties?: [...close({
				chain_name?:  string
				guest_flush?: bool
				labels?: [string]: string
				storage_locations?: [...string]
			})]
		})]

		// Represents the workload policy.
		workload_policy?: [...close({
			accelerator_topology?:  string
			max_topology_distance?: string
			type?:                  string
		})]
	})
}
