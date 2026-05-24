package res

#google_logging_log_scope: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_logging_log_scope")
	close({
		timeouts?: #timeouts

		// Output only. The creation timestamp of the log scopes.
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

		// Describes this log scopes.
		description?: string
		id?:          string

		// The location of the resource. The only supported location is
		// global so far.
		location?: string

		// The resource name of the log scope. For example:
		// \'projects/my-project/locations/global/logScopes/my-log-scope\'
		name!: string

		// The parent of the resource.
		parent?: string

		// Names of one or more parent resources : *
		// \'projects/[PROJECT_ID]\' May alternatively be one or more
		// views : *
		// \'projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\'
		// A log scope can include a maximum of 50 projects and a maximum
		// of 100 resources in total.
		resource_names!: [...string]

		// Output only. The last update timestamp of the log scopes.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
