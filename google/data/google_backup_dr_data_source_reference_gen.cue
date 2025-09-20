package data

#google_backup_dr_data_source_reference: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_backup_dr_data_source_reference")
	close({
		// The state of the backup config for the data source.
		backup_config_state?: string

		// The number of backups for the data source.
		backup_count?: number

		// The underlying data source resource.
		data_source?: string

		// The `id` of the data source reference.
		data_source_reference_id!: string

		// The GCP resource name for the data source.
		gcp_resource_name?: string
		id?:                string

		// The state of the last backup.
		last_backup_state?: string

		// The last time a successful backup was made.
		last_successful_backup_time?: string

		// The location of the data source reference.
		location!: string
		name?:     string

		// The ID of the project in which the resource belongs.
		project?:       string
		resource_type?: string
	})
}
