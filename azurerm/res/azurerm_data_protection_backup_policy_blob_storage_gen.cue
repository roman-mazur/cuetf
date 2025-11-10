package res

import "list"

#azurerm_data_protection_backup_policy_blob_storage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_protection_backup_policy_blob_storage")
	close({
		retention_rule?: matchN(1, [#retention_rule, [...#retention_rule]])
		backup_repeating_time_intervals?: [...string]
		id?:                                     string
		name!:                                   string
		operational_default_retention_duration?: string
		time_zone?:                              string
		vault_default_retention_duration?:       string
		vault_id!:                               string
		timeouts?:                               #timeouts
	})

	#retention_rule: close({
		criteria!: matchN(1, [_#defs."/$defs/retention_rule/$defs/criteria", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/retention_rule/$defs/criteria"]])
		life_cycle!: matchN(1, [_#defs."/$defs/retention_rule/$defs/life_cycle", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/retention_rule/$defs/life_cycle"]])
		name!:     string
		priority!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})

	_#defs: "/$defs/retention_rule/$defs/criteria": close({
		absolute_criteria?: string
		days_of_month?: [...number]
		days_of_week?: [...string]
		months_of_year?: [...string]
		scheduled_backup_times?: [...string]
		weeks_of_month?: [...string]
	})

	_#defs: "/$defs/retention_rule/$defs/life_cycle": close({
		data_store_type!: string
		duration!:        string
	})
}
