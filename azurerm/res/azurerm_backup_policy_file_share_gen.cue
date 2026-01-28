package res

import "list"

#azurerm_backup_policy_file_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_backup_policy_file_share")
	close({
		backup!: matchN(1, [#backup, list.MaxItems(1) & [_, ...] & [...#backup]])
		retention_daily!: matchN(1, [#retention_daily, list.MaxItems(1) & [_, ...] & [...#retention_daily]])
		backup_tier?:         string
		id?:                  string
		name!:                string
		recovery_vault_name!: string
		retention_monthly?: matchN(1, [#retention_monthly, list.MaxItems(1) & [...#retention_monthly]])
		retention_weekly?: matchN(1, [#retention_weekly, list.MaxItems(1) & [...#retention_weekly]])
		retention_yearly?: matchN(1, [#retention_yearly, list.MaxItems(1) & [...#retention_yearly]])
		resource_group_name!:        string
		timeouts?:                   #timeouts
		snapshot_retention_in_days?: number
		timezone?:                   string
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
