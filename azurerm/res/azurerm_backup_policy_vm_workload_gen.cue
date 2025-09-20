package res

import "list"

#azurerm_backup_policy_vm_workload: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_backup_policy_vm_workload")
	close({
		id?: string
		protection_policy?: matchN(1, [#protection_policy, [_, ...] & [...#protection_policy]])
		name!:                string
		recovery_vault_name!: string
		resource_group_name!: string
		workload_type!:       string
		settings?: matchN(1, [#settings, list.MaxItems(1) & [_, ...] & [...#settings]])
		timeouts?: #timeouts
	})

	#protection_policy: close({
		backup?: matchN(1, [_#defs."/$defs/protection_policy/$defs/backup", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/protection_policy/$defs/backup"]])
		retention_daily?: matchN(1, [_#defs."/$defs/protection_policy/$defs/retention_daily", list.MaxItems(1) & [..._#defs."/$defs/protection_policy/$defs/retention_daily"]])
		retention_monthly?: matchN(1, [_#defs."/$defs/protection_policy/$defs/retention_monthly", list.MaxItems(1) & [..._#defs."/$defs/protection_policy/$defs/retention_monthly"]])
		retention_weekly?: matchN(1, [_#defs."/$defs/protection_policy/$defs/retention_weekly", list.MaxItems(1) & [..._#defs."/$defs/protection_policy/$defs/retention_weekly"]])
		retention_yearly?: matchN(1, [_#defs."/$defs/protection_policy/$defs/retention_yearly", list.MaxItems(1) & [..._#defs."/$defs/protection_policy/$defs/retention_yearly"]])
		simple_retention?: matchN(1, [_#defs."/$defs/protection_policy/$defs/simple_retention", list.MaxItems(1) & [..._#defs."/$defs/protection_policy/$defs/simple_retention"]])
		policy_type!: string
	})

	#settings: close({
		compression_enabled?: bool
		time_zone!:           string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/protection_policy/$defs/backup": close({
		frequency?:            string
		frequency_in_minutes?: number
		time?:                 string
		weekdays?: [...string]
	})

	_#defs: "/$defs/protection_policy/$defs/retention_daily": close({
		count!: number
	})

	_#defs: "/$defs/protection_policy/$defs/retention_monthly": close({
		count!:       number
		format_type!: string
		monthdays?: [...number]
		weekdays?: [...string]
		weeks?: [...string]
	})

	_#defs: "/$defs/protection_policy/$defs/retention_weekly": close({
		count!: number
		weekdays!: [...string]
	})

	_#defs: "/$defs/protection_policy/$defs/retention_yearly": close({
		count!:       number
		format_type!: string
		monthdays?: [...number]
		months!: [...string]
		weekdays?: [...string]
		weeks?: [...string]
	})

	_#defs: "/$defs/protection_policy/$defs/simple_retention": close({
		count!: number
	})
}
