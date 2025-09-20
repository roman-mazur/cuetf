package res

import "list"

#azurerm_monitor_alert_prometheus_rule_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_monitor_alert_prometheus_rule_group")
	close({
		cluster_name?:        string
		description?:         string
		id?:                  string
		interval?:            string
		location!:            string
		name!:                string
		resource_group_name!: string
		rule?: matchN(1, [#rule, [_, ...] & [...#rule]])
		rule_group_enabled?: bool
		timeouts?:           #timeouts
		scopes!: [...string]
		tags?: [string]: string
	})

	#rule: close({
		action?: matchN(1, [_#defs."/$defs/rule/$defs/action", list.MaxItems(5) & [..._#defs."/$defs/rule/$defs/action"]])
		alert?: string
		annotations?: [string]: string
		enabled?:    bool
		expression!: string
		for?:        string
		labels?: [string]: string
		record?:   string
		severity?: number
		alert_resolution?: matchN(1, [_#defs."/$defs/rule/$defs/alert_resolution", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/alert_resolution"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/rule/$defs/action": close({
		action_group_id!: string
		action_properties?: [string]: string
	})

	_#defs: "/$defs/rule/$defs/alert_resolution": close({
		auto_resolved?:   bool
		time_to_resolve?: string
	})
}
