package res

#google_logging_log_scope: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_logging_log_scope")
	close({
		// Output only. The creation timestamp of the log scopes.
		create_time?: string

		// Describes this log scopes.
		description?: string

		// The location of the resource. The only supported location is
		// global so far.
		location?: string
		id?:       string

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
		timeouts?:    #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
