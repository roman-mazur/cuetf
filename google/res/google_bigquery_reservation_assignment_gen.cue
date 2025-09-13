package res

#google_bigquery_reservation_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_bigquery_reservation_assignment")
	close({
		// The resource which will use the reservation. E.g.
		// projects/myproject, folders/123, organizations/456.
		assignee!: string

		// Types of job, which could be specified when using the
		// reservation. Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE,
		// QUERY, CONTINUOUS
		job_type!: string
		id?:       string

		// The location for the resource
		location?: string

		// Output only. The resource name of the assignment.
		name?: string

		// The reservation for the resource
		reservation!: string
		project?:     string
		timeouts?:    #timeouts

		// Assignment will remain in PENDING state if no active capacity
		// commitment is present. It will become ACTIVE when some
		// capacity commitment becomes active.
		// Possible values: STATE_UNSPECIFIED, PENDING, ACTIVE
		state?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
