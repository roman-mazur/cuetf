package res

import "list"

#azurerm_monitor_scheduled_query_rules_alert_v2: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_monitor_scheduled_query_rules_alert_v2")
	close({
		auto_mitigation_enabled?:                bool
		created_with_api_version?:               string
		description?:                            string
		display_name?:                           string
		enabled?:                                bool
		evaluation_frequency!:                   string
		id?:                                     string
		is_a_legacy_log_analytics_rule?:         bool
		is_workspace_alerts_storage_configured?: bool
		action?: matchN(1, [#action, list.MaxItems(1) & [...#action]])
		location!:                          string
		mute_actions_after_alert_duration?: string
		name!:                              string
		criteria!: matchN(1, [#criteria, [_, ...] & [...#criteria]])
		query_time_range_override?: string
		resource_group_name!:       string
		scopes!: [...string]
		severity!:              number
		skip_query_validation?: bool
		tags?: [string]: string
		target_resource_types?: [...string]
		window_duration!: string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		timeouts?:                         #timeouts
		workspace_alerts_storage_enabled?: bool
	})

	#action: close({
		action_groups?: [...string]
		custom_properties?: [string]: string
	})

	#criteria: close({
		dimension?: matchN(1, [_#defs."/$defs/criteria/$defs/dimension", [..._#defs."/$defs/criteria/$defs/dimension"]])
		metric_measure_column?:   string
		operator!:                string
		query!:                   string
		resource_id_column?:      string
		threshold!:               number
		time_aggregation_method!: string
		failing_periods?: matchN(1, [_#defs."/$defs/criteria/$defs/failing_periods", list.MaxItems(1) & [..._#defs."/$defs/criteria/$defs/failing_periods"]])
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/criteria/$defs/dimension": close({
		name!:     string
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/criteria/$defs/failing_periods": close({
		minimum_failing_periods_to_trigger_alert!: number
		number_of_evaluation_periods!:             number
	})
}
