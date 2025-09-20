package res

import "list"

#azurerm_monitor_activity_log_alert: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_monitor_activity_log_alert")
	close({
		description?: string
		enabled?:     bool
		id?:          string
		location!:    string
		action?: matchN(1, [#action, [...#action]])
		name!:                string
		resource_group_name!: string
		scopes!: [...string]
		tags?: [string]: string
		criteria?: matchN(1, [#criteria, list.MaxItems(1) & [_, ...] & [...#criteria]])
		timeouts?: #timeouts
	})

	#action: close({
		action_group_id!: string
		webhook_properties?: [string]: string
	})

	#criteria: close({
		caller?: string
		resource_health?: matchN(1, [_#defs."/$defs/criteria/$defs/resource_health", list.MaxItems(1) & [..._#defs."/$defs/criteria/$defs/resource_health"]])
		category!: string
		level?:    string
		levels?: [...string]
		operation_name?: string
		service_health?: matchN(1, [_#defs."/$defs/criteria/$defs/service_health", list.MaxItems(1) & [..._#defs."/$defs/criteria/$defs/service_health"]])
		recommendation_category?: string
		recommendation_impact?:   string
		recommendation_type?:     string
		resource_group?:          string
		resource_groups?: [...string]
		resource_id?: string
		resource_ids?: [...string]
		resource_provider?: string
		resource_providers?: [...string]
		resource_type?: string
		resource_types?: [...string]
		status?: string
		statuses?: [...string]
		sub_status?: string
		sub_statuses?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/criteria/$defs/resource_health": close({
		current?: [...string]
		previous?: [...string]
		reason?: [...string]
	})

	_#defs: "/$defs/criteria/$defs/service_health": close({
		events?: [...string]
		locations?: [...string]
		services?: [...string]
	})
}
