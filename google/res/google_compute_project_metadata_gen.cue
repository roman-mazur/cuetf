package res

#google_compute_project_metadata: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_project_metadata")
	close({
		timeouts?: #timeouts
		id?:       string

		// A series of key value pairs.
		metadata!: [string]: string

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
