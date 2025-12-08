package res

import "list"

#azurerm_monitor_aad_diagnostic_setting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_monitor_aad_diagnostic_setting")
	close({
		enabled_log?: matchN(1, [#enabled_log, [...#enabled_log]])
		eventhub_authorization_rule_id?: string
		eventhub_name?:                  string
		id?:                             string
		log_analytics_workspace_id?:     string
		name!:                           string
		storage_account_id?:             string
		timeouts?:                       #timeouts
	})

	#enabled_log: close({
		retention_policy?: matchN(1, [_#defs."/$defs/enabled_log/$defs/retention_policy", list.MaxItems(1) & [..._#defs."/$defs/enabled_log/$defs/retention_policy"]])
		category!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/enabled_log/$defs/retention_policy": close({
		days?:    number
		enabled?: bool
	})
}
