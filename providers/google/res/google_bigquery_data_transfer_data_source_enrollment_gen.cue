package res

google_bigquery_data_transfer_data_source_enrollment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigquery_data_transfer_data_source_enrollment")
	close({
		timeouts?: #timeouts

		// The ID of the data source to enroll. For Google Cloud Carbon Footprint exports this is
		// '61cede5a-0000-2440-ad42-883d24f8f7b8'. Call 'projects.dataSources.list' to see the data
		// sources currently enrolled in a project.
		data_source_id!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// User friendly name of the enrolled data source, for example
		// 'Google Cloud Carbon Footprint Exports'.
		display_name?: string
		id?:           string

		// The location whose 'unenrollDataSources' endpoint is called when this resource is destroyed.
		// Enrollment itself is project-wide and unenrolling through any location removes it everywhere;
		// this only exists because the API offers no project-level unenroll method. Override it only if
		// 'us' is not routable for the project, for example under a data-residency organization policy.
		unenroll_location?: string
		project?:           string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
