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
		id?:      string
		project?: string

		// Sharing policy for reservations with Google Cloud managed
		// services.
		reservation_sharing_policy?: [...close({
			service_share_type?: string
		})]
		self_link?: string

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
			count?:        number
			in_use_count?: number
			instance_properties?: [...close({
				guest_accelerators?: [...close({
					accelerator_count?: number
					accelerator_type?:  string
				})]
				local_ssds?: [...close({
					disk_size_gb?: number
					interface?:    string
				})]
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
