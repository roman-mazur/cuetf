package data

#google_backup_dr_backup: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_backup_dr_backup")
	close({
		backup_vault_id!: string

		// List of all backups under data source.
		backups?: [...close({
			backup_id?:       string
			backup_vault_id?: string
			create_time?:     string
			data_source_id?:  string
			location?:        string
			name?:            string
		})]

		// The time when the backup was created.
		create_time?:    string
		data_source_id!: string
		id?:             string

		// Name of resource
		name?:     string
		location!: string
		project!:  string
	})
}
