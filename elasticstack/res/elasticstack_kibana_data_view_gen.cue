package res

#elasticstack_kibana_data_view: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_kibana_data_view")
	close({
		// Generated ID for the data view.
		id?: string
		data_view!: close({
			// Allows the Data view saved object to exist before the data is
			// available.
			allow_no_index?: bool

			// Map of field attributes by field name.
			field_attrs?: _

			// Map of field formats by field name.
			field_formats?: _

			// Saved object ID.
			id?: string

			// The Data view name.
			name?: string

			// Array of space IDs for sharing the Data view between multiple
			// spaces.
			namespaces?: [...string]

			// Map of runtime field definitions by field name.
			runtime_field_map?: _

			// List of field names you want to filter out in Discover.
			source_filters?: [...string]

			// Timestamp field name, which you use for time-based Data views.
			time_field_name?: string

			// Comma-separated list of data streams, indices, and aliases that
			// you want to search. Supports wildcards (*).
			title!: string
		})

		// Overrides an existing data view if a data view with the
		// provided title already exists.
		override?: bool

		// An identifier for the space. If space_id is not provided, the
		// default space is used.
		space_id?: string
	})
}
