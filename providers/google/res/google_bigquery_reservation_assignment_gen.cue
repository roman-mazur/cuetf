package res

#google_bigquery_reservation_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigquery_reservation_assignment")
	close({
		timeouts?: #timeouts

		// The resource which will use the reservation. E.g.
		// projects/myproject, folders/123, organizations/456.
		assignee!: string

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// Types of job, which could be specified when using the
		// reservation. Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE,
		// QUERY, CONTINUOUS
		job_type!: string

		// The location for the resource
		location?: string

		// Output only. The resource name of the assignment.
		name?:    string
		project?: string

		// The reservation for the resource
		reservation!: string

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
