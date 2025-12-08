package res

import "list"

#azurerm_data_protection_backup_policy_disk: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_protection_backup_policy_disk")
	close({
		retention_rule?: matchN(1, [#retention_rule, [...#retention_rule]])
		backup_repeating_time_intervals!: [...string]
		default_retention_duration!: string
		id?:                         string
		name!:                       string
		time_zone?:                  string
		vault_id!:                   string
		timeouts?:                   #timeouts
	})

	#retention_rule: close({
		criteria!: matchN(1, [_#defs."/$defs/retention_rule/$defs/criteria", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/retention_rule/$defs/criteria"]])
		duration!: string
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
	})
}
