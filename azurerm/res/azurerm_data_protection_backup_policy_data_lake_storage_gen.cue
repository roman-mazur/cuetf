package res

#azurerm_data_protection_backup_policy_data_lake_storage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_protection_backup_policy_data_lake_storage")
	close({
		retention_rule?: matchN(1, [#retention_rule, [...#retention_rule]])
		timeouts?: #timeouts
		backup_schedule!: [...string]
		data_protection_backup_vault_id!: string
		default_retention_duration!:      string
		id?:                              string
		name!:                            string
		time_zone?:                       string
	})

	#retention_rule: close({
		absolute_criteria?: string
		days_of_week?: [...string]
		duration!: string
		months_of_year?: [...string]
		name!: string
		scheduled_backup_times?: [...string]
		weeks_of_month?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
