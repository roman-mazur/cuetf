package res

#google_bigquery_capacity_commitment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigquery_capacity_commitment")
	close({
		// The optional capacity commitment ID. Capacity commitment name
		// will be generated automatically if this field is
		// empty. This field must only contain lower case alphanumeric
		// characters or dashes. The first and last character
		// cannot be a dash. Max length is 64 characters. NOTE: this ID
		// won't be kept if the capacity commitment is split
		// or merged.
		capacity_commitment_id?: string

		// The start of the current commitment period. It is applicable
		// only for ACTIVE capacity commitments.
		commitment_end_time?: string

		// The start of the current commitment period. It is applicable
		// only for ACTIVE capacity commitments.
		commitment_start_time?: string

		// The edition type. Valid values are STANDARD, ENTERPRISE,
		// ENTERPRISE_PLUS
		edition?: string

		// If true, fail the request if another project in the
		// organization has a capacity commitment.
		enforce_single_admin_project_per_org?: string
		id?:                                   string

		// The geographic location where the transfer config should
		// reside.
		// Examples: US, EU, asia-northeast1. The default value is US.
		location?: string

		// The resource name of the capacity commitment, e.g.,
		// projects/myproject/locations/US/capacityCommitments/123
		name?: string

		// Capacity commitment plan. Valid values are at
		// https://cloud.google.com/bigquery/docs/reference/reservations/rpc/google.cloud.bigquery.reservation.v1#commitmentplan
		plan!:     string
		timeouts?: #timeouts

		// The plan this capacity commitment is converted to after
		// commitmentEndTime passes. Once the plan is changed, committed
		// period is extended according to commitment plan. Only
		// applicable for some commitment plans.
		renewal_plan?: string
		project?:      string

		// Number of slots in this commitment.
		slot_count!: number

		// State of the commitment
		state?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
