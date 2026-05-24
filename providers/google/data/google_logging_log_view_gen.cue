package data

#google_logging_log_view: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_logging_log_view")
	close({
		// The bucket of the resource
		bucket!: string

		// Output only. The creation timestamp of the view.
		create_time?: string

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

		// Describes this view.
		description?: string

		// Filter that restricts which log entries in a bucket are visible
		// in this view. Filters are restricted to be a logical AND of
		// ==/!= of any of the following: - originating
		// project/folder/organization/billing account. - resource type -
		// log id For example: SOURCE("projects/myproject") AND
		// resource.type = "gce_instance" AND LOG_ID("stdout")
		filter?: string
		id?:     string

		// The location of the resource. The supported locations are:
		// global, us-central1, us-east1, us-west1, asia-east1,
		// europe-west1.
		location!: string

		// The resource name of the view. For example:
		// \'projects/my-project/locations/global/buckets/my-bucket/views/my-view\'
		name!: string

		// The parent of the resource.
		parent!: string

		// Output only. The last update timestamp of the view.
		update_time?: string
	})
}
