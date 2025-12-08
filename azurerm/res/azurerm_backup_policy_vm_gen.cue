package res

import "list"

#azurerm_backup_policy_vm: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_backup_policy_vm")
	close({
		id?:                             string
		instant_restore_retention_days?: number
		name!:                           string
		policy_type?:                    string
		recovery_vault_name!:            string
		backup!: matchN(1, [#backup, list.MaxItems(1) & [_, ...] & [...#backup]])
		resource_group_name!: string
		instant_restore_resource_group?: matchN(1, [#instant_restore_resource_group, list.MaxItems(1) & [...#instant_restore_resource_group]])
		retention_daily?: matchN(1, [#retention_daily, list.MaxItems(1) & [...#retention_daily]])
		retention_monthly?: matchN(1, [#retention_monthly, list.MaxItems(1) & [...#retention_monthly]])
		retention_weekly?: matchN(1, [#retention_weekly, list.MaxItems(1) & [...#retention_weekly]])
		retention_yearly?: matchN(1, [#retention_yearly, list.MaxItems(1) & [...#retention_yearly]])
		tiering_policy?: matchN(1, [#tiering_policy, list.MaxItems(1) & [...#tiering_policy]])
		timezone?: string
		timeouts?: #timeouts
	})

	#backup: close({
		frequency!:     string
		hour_duration?: number
		hour_interval?: number
		time!:          string
		weekdays?: [...string]
	})

	#instant_restore_resource_group: close({
		prefix!: string
		suffix?: string
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

	#tiering_policy: close({
		archived_restore_point!: matchN(1, [_#defs."/$defs/tiering_policy/$defs/archived_restore_point", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/tiering_policy/$defs/archived_restore_point"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/tiering_policy/$defs/archived_restore_point": close({
		duration?:      number
		duration_type?: string
		mode!:          string
	})
}
