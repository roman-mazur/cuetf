package data

#google_alloydb_locations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_alloydb_locations")
	close({
		id?: string
		locations?: [...close({
			display_name?: string
			labels?: [string]: string
			location_id?: string
			metadata?: [string]: string
			name?: string
		})]

		// Project ID of the project.
		project?: string
	})
}
