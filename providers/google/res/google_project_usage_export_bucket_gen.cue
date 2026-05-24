package res

#google_project_usage_export_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_project_usage_export_bucket")
	close({
		timeouts?: #timeouts

		// The bucket to store reports in.
		bucket_name!: string

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

		// A prefix for the reports, for instance, the project name.
		prefix?: string

		// The project to set the export bucket on. If it is not provided,
		// the provider project is used.
		project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
