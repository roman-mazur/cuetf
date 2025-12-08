package res

import "list"

#azurerm_mssql_managed_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mssql_managed_database")
	close({
		id?: string
		long_term_retention_policy?: matchN(1, [#long_term_retention_policy, list.MaxItems(1) & [...#long_term_retention_policy]])
		managed_instance_id!:       string
		name!:                      string
		short_term_retention_days?: number
		tags?: [string]: string
		point_in_time_restore?: matchN(1, [#point_in_time_restore, list.MaxItems(1) & [...#point_in_time_restore]])
		timeouts?: #timeouts
	})

	#long_term_retention_policy: close({
		immutable_backups_enabled?: bool
		monthly_retention?:         string
		week_of_year?:              number
		weekly_retention?:          string
		yearly_retention?:          string
	})

	#point_in_time_restore: close({
		restore_point_in_time!: string
		source_database_id!:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
