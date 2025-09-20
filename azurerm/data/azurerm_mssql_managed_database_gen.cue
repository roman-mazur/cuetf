package data

#azurerm_mssql_managed_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mssql_managed_database")
	close({
		timeouts?: #timeouts
		id?:       string
		long_term_retention_policy?: [...close({
			immutable_backups_enabled?: bool
			monthly_retention?:         string
			week_of_year?:              number
			weekly_retention?:          string
			yearly_retention?:          string
		})]
		managed_instance_id!:   string
		managed_instance_name?: string
		name!:                  string
		point_in_time_restore?: [...close({
			restore_point_in_time?: string
			source_database_id?:    string
		})]
		resource_group_name?:       string
		short_term_retention_days?: number
	})

	#timeouts: close({
		read?: string
	})
}
