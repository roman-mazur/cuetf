package res

#google_observability_trace_scope: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_observability_trace_scope")
	close({
		timeouts?: #timeouts

		// The creation timestamp of the trace scope.
		create_time?: string

		// Describes this trace scope.
		//
		// The maximum length of the description is 8000 characters.
		description?: string
		id?:          string

		// GCP region the TraceScope is stored in. Only 'global' is
		// supported.
		location!: string

		// Identifier. The resource name of the trace scope.
		//
		// For example:
		//
		// projects/my-project/locations/global/traceScopes/my-trace-scope
		name?:    string
		project?: string

		// Names of the projects that are included in this trace scope.
		//
		// * 'projects/[PROJECT_ID]'
		//
		// A trace scope can include a maximum of 20 projects.
		resource_names!: [...string]

		// A client-assigned identifier for the trace scope.
		trace_scope_id!: string

		// The last update timestamp of the trace scope.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
