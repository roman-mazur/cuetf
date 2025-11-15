package data

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

		// Duration after which the reservation will be auto-deleted by
		// Compute Engine. Cannot be used with delete_at_time.
		delete_after_duration?: [...close({
			nanos?:   number
			seconds?: string
		})]

		// Absolute time in future when the reservation will be
		// auto-deleted by Compute Engine. Timestamp is represented in
		// RFC3339 text format.
		// Cannot be used with delete_after_duration.
		delete_at_time?: string

		// An optional description of this resource.
		description?: string

		// The unique identifier for the resource. This identifier is
		// defined by the server.
		id?: string

		// Type of the resource. Always compute#reservations for
		// reservations.
		kind?: string

		// Full or partial URL to parent commitments. This field displays
		// for reservations that are tied to multiple commitments.
		linked_commitments?: [...string]

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

		// The number of reservation blocks associated with this
		// reservation.
		reservation_block_count?: number

		// Sharing policy for reservations with Google Cloud managed
		// services.
		reservation_sharing_policy?: [...close({
			service_share_type?: string
		})]

		// Status information for Reservation resource.
		resource_status?: [...close({
			health_info?: [...close({
				degraded_block_count?: number
				health_status?:        string
				healthy_block_count?:  number
			})]
			reservation_block_count?: number
			reservation_maintenance?: [...close({
				instance_maintenance_ongoing_count?:       number
				instance_maintenance_pending_count?:       number
				maintenance_ongoing_count?:                number
				maintenance_pending_count?:                number
				scheduling_type?:                          string
				subblock_infra_maintenance_ongoing_count?: number
				subblock_infra_maintenance_pending_count?: number
				upcoming_group_maintenance?: [...close({
					can_reschedule?:           bool
					latest_window_start_time?: string
					maintenance_on_shutdown?:  bool
					maintenance_reasons?: [...string]
					maintenance_status?: string
					type?:               string
					window_end_time?:    string
					window_start_time?:  string
				})]
			})]
			specific_sku_allocation?: [...close({
				source_instance_template_id?: string
				utilizations?: [string]: string
			})]
		})]

		// Reserved for future use.
		satisfies_pzs?: bool
		self_link?:     string

		// The share setting for reservations.
		share_settings?: [...close({
			project_map?: [...close({
				id?:         string
				project_id?: string
			})]
			share_type?: string
		})]

		// Reservation for instances with specific machine shapes.
		specific_reservation?: [...close({
			assured_count?: number
			count?:         number
			in_use_count?:  number
			instance_properties?: [...close({
				guest_accelerators?: [...close({
					accelerator_count?: number
					accelerator_type?:  string
				})]
				local_ssds?: [...close({
					disk_size_gb?: number
					interface?:    string
				})]
				location_hint?:    string
				machine_type?:     string
				min_cpu_platform?: string
			})]
			source_instance_template?: string
		})]

		// When set to true, only VMs that target this reservation by name
		// can
		// consume this reservation. Otherwise, it can be consumed by VMs
		// with
		// affinity for any reservation. Defaults to false.
		specific_reservation_required?: bool

		// The status of the reservation.
		status?: string

		// The zone where the reservation is made.
		zone!: string
	})
}
