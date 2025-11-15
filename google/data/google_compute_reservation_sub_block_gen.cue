package data

#google_compute_reservation_sub_block: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_reservation_sub_block")
	close({
		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// Health information for the reservation sub-block.
		health_info?: [...close({
			degraded_host_count?:  number
			degraded_infra_count?: number
			health_status?:        string
			healthy_host_count?:   number
			healthy_infra_count?:  number
		})]

		// The number of instances that are currently in use on this
		// reservation sub-block.
		in_use_count?: number

		// Type of the resource. Always compute#reservationSubBlock for
		// reservation sub-blocks.
		kind?: string

		// The name of the reservation sub-block.
		name!: string
		id?:   string

		// The physical topology of the reservation sub-block.
		physical_topology?: [...close({
			block?:     string
			cluster?:   string
			sub_block?: string
		})]

		// The project in which the resource belongs.
		project?: string

		// The name of the parent reservation.
		reservation!: string

		// The name of the parent reservation block.
		reservation_block!: string

		// Maintenance information for this reservation sub-block.
		reservation_sub_block_maintenance?: [...close({
			instance_maintenance_ongoing_count?:       number
			instance_maintenance_pending_count?:       number
			maintenance_ongoing_count?:                number
			maintenance_pending_count?:                number
			scheduling_type?:                          string
			subblock_infra_maintenance_ongoing_count?: number
			subblock_infra_maintenance_pending_count?: number
		})]

		// The unique identifier for the resource.
		resource_id?: string

		// Server-defined fully-qualified URL for this resource.
		self_link?: string

		// Server-defined URL for this resource with the resource id.
		self_link_with_id?: string

		// Status of the reservation sub-block.
		status?: string

		// The number of hosts that are allocated in this reservation
		// sub-block.
		sub_block_count?: number

		// The zone where the reservation sub-block resides.
		zone?: string
	})
}
