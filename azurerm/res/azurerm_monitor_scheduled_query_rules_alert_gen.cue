package res

import "list"

#azurerm_monitor_scheduled_query_rules_alert: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_monitor_scheduled_query_rules_alert")
	close({
		authorized_resource_ids?: [...string]
		auto_mitigation_enabled?: bool
		data_source_id!:          string
		description?:             string
		enabled?:                 bool
		frequency!:               number
		id?:                      string
		location!:                string
		name!:                    string
		action?: matchN(1, [#action, list.MaxItems(1) & [_, ...] & [...#action]])
		timeouts?: #timeouts
		query!:    string
		trigger?: matchN(1, [#trigger, list.MaxItems(1) & [_, ...] & [...#trigger]])
		query_type?:          string
		resource_group_name!: string
		severity?:            number
		tags?: [string]: string
		throttling?:  number
		time_window!: number
	})

	#action: close({
		action_group!: [...string]
		custom_webhook_payload?: string
		email_subject?:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#trigger: close({
		metric_trigger?: matchN(1, [_#defs."/$defs/trigger/$defs/metric_trigger", list.MaxItems(1) & [..._#defs."/$defs/trigger/$defs/metric_trigger"]])
		operator!:  string
		threshold!: number
	})

	_#defs: "/$defs/trigger/$defs/metric_trigger": close({
		metric_column?:       string
		metric_trigger_type!: string
		operator!:            string
		threshold!:           number
	})
}
