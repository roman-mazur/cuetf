package res

import "list"

#azurerm_site_recovery_replication_recovery_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_site_recovery_replication_recovery_plan")
	close({
		azure_to_azure_settings?: matchN(1, [#azure_to_azure_settings, list.MaxItems(1) & [...#azure_to_azure_settings]])
		id?:                        string
		name!:                      string
		recovery_vault_id!:         string
		source_recovery_fabric_id!: string
		target_recovery_fabric_id!: string
		boot_recovery_group!: matchN(1, [#boot_recovery_group, [_, ...] & [...#boot_recovery_group]])
		failover_recovery_group!: matchN(1, [#failover_recovery_group, list.MaxItems(1) & [_, ...] & [...#failover_recovery_group]])
		shutdown_recovery_group!: matchN(1, [#shutdown_recovery_group, list.MaxItems(1) & [_, ...] & [...#shutdown_recovery_group]])
		timeouts?: #timeouts
	})

	#azure_to_azure_settings: close({
		primary_edge_zone?:  string
		primary_zone?:       string
		recovery_edge_zone?: string
		recovery_zone?:      string
	})

	#boot_recovery_group: close({
		post_action?: matchN(1, [_#defs."/$defs/boot_recovery_group/$defs/post_action", [..._#defs."/$defs/boot_recovery_group/$defs/post_action"]])
		pre_action?: matchN(1, [_#defs."/$defs/boot_recovery_group/$defs/pre_action", [..._#defs."/$defs/boot_recovery_group/$defs/pre_action"]])
		replicated_protected_items?: [...string]
	})

	#failover_recovery_group: close({
		post_action?: matchN(1, [_#defs."/$defs/failover_recovery_group/$defs/post_action", [..._#defs."/$defs/failover_recovery_group/$defs/post_action"]])
		pre_action?: matchN(1, [_#defs."/$defs/failover_recovery_group/$defs/pre_action", [..._#defs."/$defs/failover_recovery_group/$defs/pre_action"]])
	})

	#shutdown_recovery_group: close({
		post_action?: matchN(1, [_#defs."/$defs/shutdown_recovery_group/$defs/post_action", [..._#defs."/$defs/shutdown_recovery_group/$defs/post_action"]])
		pre_action?: matchN(1, [_#defs."/$defs/shutdown_recovery_group/$defs/pre_action", [..._#defs."/$defs/shutdown_recovery_group/$defs/pre_action"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/boot_recovery_group/$defs/post_action": close({
		fabric_location?: string
		fail_over_directions!: [...string]
		fail_over_types!: [...string]
		manual_action_instruction?: string
		name!:                      string
		runbook_id?:                string
		script_path?:               string
		type!:                      string
	})

	_#defs: "/$defs/boot_recovery_group/$defs/pre_action": close({
		fabric_location?: string
		fail_over_directions!: [...string]
		fail_over_types!: [...string]
		manual_action_instruction?: string
		name!:                      string
		runbook_id?:                string
		script_path?:               string
		type!:                      string
	})

	_#defs: "/$defs/failover_recovery_group/$defs/post_action": close({
		fabric_location?: string
		fail_over_directions!: [...string]
		fail_over_types!: [...string]
		manual_action_instruction?: string
		name!:                      string
		runbook_id?:                string
		script_path?:               string
		type!:                      string
	})

	_#defs: "/$defs/failover_recovery_group/$defs/pre_action": close({
		fabric_location?: string
		fail_over_directions!: [...string]
		fail_over_types!: [...string]
		manual_action_instruction?: string
		name!:                      string
		runbook_id?:                string
		script_path?:               string
		type!:                      string
	})

	_#defs: "/$defs/shutdown_recovery_group/$defs/post_action": close({
		fabric_location?: string
		fail_over_directions!: [...string]
		fail_over_types!: [...string]
		manual_action_instruction?: string
		name!:                      string
		runbook_id?:                string
		script_path?:               string
		type!:                      string
	})

	_#defs: "/$defs/shutdown_recovery_group/$defs/pre_action": close({
		fabric_location?: string
		fail_over_directions!: [...string]
		fail_over_types!: [...string]
		manual_action_instruction?: string
		name!:                      string
		runbook_id?:                string
		script_path?:               string
		type!:                      string
	})
}
