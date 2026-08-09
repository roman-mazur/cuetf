package res

google_bigquery_reservation_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigquery_reservation_assignment")
	close({
		timeouts?: #timeouts

		// The resource which will use the reservation. E.g. projects/myproject,
		// folders/123, organizations/456.
		assignee!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// Types of job, which could be specified when using the reservation. Possible
		// values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY, CONTINUOUS
		job_type!: string

		// The location for the resource
		location?: string

		// Output only. The resource name of the assignment.
		name?: string

		// Optional. Represents the principal for this assignment. If not empty, jobs
		// run by this principal will utilize the associated reservation. Otherwise,
		// jobs will fall back to using the reservation assigned to the project,
		// folder, or organization (in that order). If no reservation is assigned at
		// any of these levels, on-demand capacity will be used. The supported formats
		// are:
		// * 'principal://goog/subject/USER_EMAIL_ADDRESS' for users,
		// *
		// 'principal://iam.googleapis.com/projects/-/serviceAccounts/SA_EMAIL_ADDRESS'
		// for service accounts,
		// *
		// 'principal://iam.googleapis.com/projects/PROJECT_NUMBER/locations/global/workloadIdentityPools/POOL_ID/subject/SUBJECT_ID'
		// for workload identity pool identities.
		// * The special value 'unknown_or_deleted_user' represents principals which
		// cannot be read from the user info service, for example deleted users.
		principal?: string

		// The reservation for the resource
		reservation!: string
		project?:     string

		// Assignment will remain in PENDING state if no active capacity commitment is
		// present. It will become ACTIVE when some capacity commitment becomes active.
		// Possible values: STATE_UNSPECIFIED, PENDING, ACTIVE
		state?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
