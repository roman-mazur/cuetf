package data

#google_alloydb_supported_database_flags: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_alloydb_supported_database_flags")
	close({
		id?: string

		// The canonical id for the location. For example: "us-east1".
		location!: string

		// Project ID of the project.
		project?: string
		supported_database_flags?: [...close({
			accepts_multiple_values?: bool
			flag_name?:               string
			integer_restrictions?: [...close({
				max_value?: string
				min_value?: string
			})]
			name?:                string
			requires_db_restart?: bool
			string_restrictions?: [...close({
				allowed_values?: [...string]
			})]
			supported_db_versions?: [...string]
			value_type?: string
		})]
	})
}
