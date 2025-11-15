package data

#google_compute_reservation_block: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_reservation_block")
	close({
		// The number of resources that are allocated in this reservation
		// block.
		block_count?: number

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// Health information for the reservation block.
		health_info?: [...close({
			degraded_sub_block_count?: number
			health_status?:            string
			healthy_sub_block_count?:  number
		})]

		// The number of instances that are currently in use on this
		// reservation block.
		in_use_count?: number

		// Type of the resource. Always compute#reservationBlock for
		// reservation blocks.
		kind?: string
		id?:   string

		// The name of the reservation block.
		name!: string

		// The physical topology of the reservation block.
		physical_topology?: [...close({
			block?:   string
			cluster?: string
		})]

		// The project in which the resource belongs.
		project?: string

		// The name of the parent reservation.
		reservation!: string

		// Maintenance information for this reservation block.
		reservation_maintenance?: [...close({
			instance_maintenance_ongoing_count?:       number
			instance_maintenance_pending_count?:       number
			maintenance_ongoing_count?:                number
			maintenance_pending_count?:                number
			scheduling_type?:                          string
			subblock_infra_maintenance_ongoing_count?: number
			subblock_infra_maintenance_pending_count?: number
		})]

		// The number of reservation subBlocks associated with this
		// reservation block.
		reservation_sub_block_count?: number

		// The number of in-use reservation subBlocks associated with this
		// reservation block.
		reservation_sub_block_in_use_count?: number

		// The unique identifier for the resource.
		resource_id?: string

		// Server-defined fully-qualified URL for this resource.
		self_link?: string

		// Server-defined URL for this resource with the resource id.
		self_link_with_id?: string

		// Status of the reservation block.
		status?: string

		// The zone where the reservation block resides.
		zone?: string
	})
}
