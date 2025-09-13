package data

#google_backup_dr_data_source_references: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_backup_dr_data_source_references")
	close({
		// A list of the data source references found.
		data_source_references?: [...close({
			backup_config_state?:         string
			backup_count?:                number
			data_source?:                 string
			gcp_resource_name?:           string
			last_backup_state?:           string
			last_successful_backup_time?: string
			name?:                        string
			resource_type?:               string
		})]
		id?: string

		// The location to list the data source references from.
		location!: string

		// The ID of the project in which the resource belongs.
		project?: string

		// The resource type to get the data source references for.
		// Examples include, "compute.googleapis.com/Instance",
		// "sqladmin.googleapis.com/Instance".
		resource_type!: string
	})
}
