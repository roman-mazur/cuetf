package res

google_bigquery_data_transfer_data_source_enrollment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigquery_data_transfer_data_source_enrollment")
	close({
		timeouts?: #timeouts

		// Indicates the type of authorization.
		authorization_type?: string

		// Data source client id which should be used to receive refresh token.
		client_id?: string

		// Data refresh type.
		data_refresh_type?: string

		// The ID of the data source to enroll. For Google Cloud Carbon Footprint exports this is
		// '61cede5a-0000-2440-ad42-883d24f8f7b8'. Call 'projects.dataSources.list' to see the data
		// sources currently enrolled in a project.
		data_source_id!: string

		// Default data refresh window on days.
		default_data_refresh_window_days?: number

		// Default data transfer schedule.
		default_schedule?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// User friendly data source description string.
		description?: string

		// User friendly name of the enrolled data source, for example
		// 'Google Cloud Carbon Footprint Exports'.
		display_name?: string

		// Url to the documentation about the data source.
		help_url?: string
		id?:       string

		// Disables support for manual transfer runs.
		manual_runs_disabled?: bool

		// The minimum interval between two scheduled runs.
		minimum_schedule_interval?: string

		// The resource name of the data source.
		name?: string

		// Data source parameters.
		parameters?: [...close({
			allowed_values?: [...string]
			deprecated?:             bool
			description?:            string
			display_name?:           string
			immutable?:              bool
			max_list_size?:          number
			max_value?:              number
			min_value?:              number
			param_id?:               string
			required?:               bool
			type?:                   string
			validation_description?: string
			validation_help_url?:    string
			validation_regex?:       string
		})]

		// Api auth scopes for which refresh token needs to be obtained.
		scopes?: [...string]
		project?: string

		// Specifies whether the data source supports a user defined schedule.
		supports_custom_schedule?: bool

		// The location whose 'unenrollDataSources' endpoint is called when this resource is destroyed.
		// Enrollment itself is project-wide and unenrolling through any location removes it everywhere;
		// this only exists because the API offers no project-level unenroll method. Override it only if
		// 'us' is not routable for the project, for example under a data-residency organization policy.
		unenroll_location?: string

		// The number of seconds to wait for a transfer to start before declaring the failure.
		update_deadline_seconds?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
