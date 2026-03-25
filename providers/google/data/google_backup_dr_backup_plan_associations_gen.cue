package data

#google_backup_dr_backup_plan_associations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_backup_dr_backup_plan_associations")
	close({
		// A list of the backup plan associations found.
		associations?: [...close({
			backup_plan?: string
			create_time?: string
			data_source?: string
			name?:        string
			resource?:    string
			rules_config_info?: [...close({
				last_backup_error?: [...close({
					code?:    number
					message?: string
				})]
				last_backup_state?:                       string
				last_successful_backup_consistency_time?: string
				rule_id?:                                 string
			})]
		})]
		id?: string

		// The location to list the backup plan associations from.
		location!: string

		// The ID of the project in which the resource belongs.
		project?: string
	})
}
