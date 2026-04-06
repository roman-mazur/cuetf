package res

#google_compute_project_metadata_item: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_project_metadata_item")
	close({
		timeouts?: #timeouts
		id?:       string

		// The metadata key to set.
		key!: string

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string

		// The value to set for the given metadata key.
		value!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
