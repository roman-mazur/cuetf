package res

import "list"

#azurerm_data_protection_backup_policy_mysql_flexible_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_protection_backup_policy_mysql_flexible_server")
	close({
		backup_repeating_time_intervals!: [...string]
		default_retention_rule!: matchN(1, [#default_retention_rule, list.MaxItems(1) & [_, ...] & [...#default_retention_rule]])
		id?:        string
		name!:      string
		time_zone?: string
		vault_id!:  string
		retention_rule?: matchN(1, [#retention_rule, [...#retention_rule]])
		timeouts?: #timeouts
	})

	#default_retention_rule: close({
		life_cycle!: matchN(1, [_#defs."/$defs/default_retention_rule/$defs/life_cycle", [_, ...] & [..._#defs."/$defs/default_retention_rule/$defs/life_cycle"]])
	})

	#retention_rule: close({
		criteria!: matchN(1, [_#defs."/$defs/retention_rule/$defs/criteria", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/retention_rule/$defs/criteria"]])
		life_cycle!: matchN(1, [_#defs."/$defs/retention_rule/$defs/life_cycle", [_, ...] & [..._#defs."/$defs/retention_rule/$defs/life_cycle"]])
		name!:     string
		priority!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})

	_#defs: "/$defs/default_retention_rule/$defs/life_cycle": close({
		data_store_type!: string
		duration!:        string
	})

	_#defs: "/$defs/retention_rule/$defs/criteria": close({
		absolute_criteria?: string
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
