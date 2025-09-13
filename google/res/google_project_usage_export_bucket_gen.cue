package res

#google_project_usage_export_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_project_usage_export_bucket")
	close({
		// The bucket to store reports in.
		bucket_name!: string
		id?:          string

		// A prefix for the reports, for instance, the project name.
		prefix?:   string
		timeouts?: #timeouts

		// The project to set the export bucket on. If it is not provided,
		// the provider project is used.
		project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
