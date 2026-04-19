package data

#google_discovery_engine_data_stores: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_discovery_engine_data_stores")
	close({
		data_stores?: [...close({
			content_config?:    string
			create_time?:       string
			data_store_id?:     string
			default_schema_id?: string
			display_name?:      string
			industry_vertical?: string
			name?:              string
			solution_types?: [...string]
		})]
		id?: string

		// The geographic location where the data stores reside. The value
		// can only be one of "global", "us" and "eu".
		location?: string

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string
	})
}
