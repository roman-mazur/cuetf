package res

import "list"

azurerm_data_protection_backup_policy_cosmosdb_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_protection_backup_policy_cosmosdb_account")
	close({
		monthly_retention_rule?: matchN(1, [#monthly_retention_rule, list.MaxItems(1) & [...#monthly_retention_rule]])
		timeouts?: #timeouts
		weekly_retention_rule?: matchN(1, [#weekly_retention_rule, list.MaxItems(1) & [...#weekly_retention_rule]])
		yearly_retention_rule?: matchN(1, [#yearly_retention_rule, list.MaxItems(1) & [...#yearly_retention_rule]])
		backup_frequency?:                string
		backup_schedule!:                 string
		data_protection_backup_vault_id!: string
		default_retention_duration!:      string
		id?:                              string
		incremental_backup_schedules?: [...string]
		name!: string
	})

	#monthly_retention_rule: close({
		days_of_week?: [...string]
		duration!: string
		weeks_of_month?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})

	#weekly_retention_rule: close({
		days_of_week?: [...string]
		duration!: string
	})

	#yearly_retention_rule: close({
		days_of_week?: [...string]
		duration!: string
		months_of_year?: [...string]
		weeks_of_month?: [...string]
	})
}
