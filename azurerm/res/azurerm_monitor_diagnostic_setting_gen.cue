package res

import "list"

#azurerm_monitor_diagnostic_setting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_monitor_diagnostic_setting")
	close({
		eventhub_authorization_rule_id?: string
		eventhub_name?:                  string
		id?:                             string
		log_analytics_destination_type?: string
		log_analytics_workspace_id?:     string
		enabled_log?: matchN(1, [#enabled_log, [...#enabled_log]])
		name!: string
		enabled_metric?: matchN(1, [#enabled_metric, [...#enabled_metric]])
		partner_solution_id?: string
		storage_account_id?:  string
		metric?: matchN(1, [#metric, [...#metric]])
		timeouts?:           #timeouts
		target_resource_id!: string
	})

	#enabled_log: close({
		retention_policy?: matchN(1, [_#defs."/$defs/enabled_log/$defs/retention_policy", list.MaxItems(1) & [..._#defs."/$defs/enabled_log/$defs/retention_policy"]])
		category?:       string
		category_group?: string
	})

	#enabled_metric: close({
		category!: string
	})

	#metric: close({
		retention_policy?: matchN(1, [_#defs."/$defs/metric/$defs/retention_policy", list.MaxItems(1) & [..._#defs."/$defs/metric/$defs/retention_policy"]])
		category!: string
		enabled?:  bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/enabled_log/$defs/retention_policy": close({
		days?:    number
		enabled!: bool
	})

	_#defs: "/$defs/metric/$defs/retention_policy": close({
		days?:    number
		enabled!: bool
	})
}
