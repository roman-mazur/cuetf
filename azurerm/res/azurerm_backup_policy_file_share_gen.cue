package res

import "list"

#azurerm_backup_policy_file_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_backup_policy_file_share")
	close({
		backup!: matchN(1, [#backup, list.MaxItems(1) & [_, ...] & [...#backup]])
		retention_daily!: matchN(1, [#retention_daily, list.MaxItems(1) & [_, ...] & [...#retention_daily]])
		id?: string
		retention_monthly?: matchN(1, [#retention_monthly, list.MaxItems(1) & [...#retention_monthly]])
		name!:                string
		recovery_vault_name!: string
		resource_group_name!: string
		timezone?:            string
		retention_weekly?: matchN(1, [#retention_weekly, list.MaxItems(1) & [...#retention_weekly]])
		retention_yearly?: matchN(1, [#retention_yearly, list.MaxItems(1) & [...#retention_yearly]])
		timeouts?: #timeouts
	})

	#backup: close({
		hourly?: matchN(1, [_#defs."/$defs/backup/$defs/hourly", list.MaxItems(1) & [..._#defs."/$defs/backup/$defs/hourly"]])
		frequency!: string
		time?:      string
	})

	#retention_daily: close({
		count!: number
	})

	#retention_monthly: close({
		count!: number
		days?: [...number]
		include_last_days?: bool
		weekdays?: [...string]
		weeks?: [...string]
	})

	#retention_weekly: close({
		count!: number
		weekdays!: [...string]
	})

	#retention_yearly: close({
		count!: number
		days?: [...number]
		include_last_days?: bool
		months!: [...string]
		weekdays?: [...string]
		weeks?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/backup/$defs/hourly": close({
		interval!:        number
		start_time!:      string
		window_duration!: number
	})
}
