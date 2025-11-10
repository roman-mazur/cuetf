package res

import "list"

#azurerm_sentinel_alert_rule_scheduled: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_sentinel_alert_rule_scheduled")
	close({
		alert_rule_template_guid?:    string
		alert_rule_template_version?: string
		custom_details?: [string]: string
		description?:                string
		display_name!:               string
		enabled?:                    bool
		id?:                         string
		log_analytics_workspace_id!: string
		name!:                       string
		query!:                      string
		query_frequency?:            string
		query_period?:               string
		alert_details_override?: matchN(1, [#alert_details_override, [...#alert_details_override]])
		severity!:             string
		suppression_duration?: string
		entity_mapping?: matchN(1, [#entity_mapping, list.MaxItems(10) & [...#entity_mapping]])
		suppression_enabled?: bool
		event_grouping?: matchN(1, [#event_grouping, list.MaxItems(1) & [...#event_grouping]])
		tactics?: [...string]
		techniques?: [...string]
		trigger_operator?: string
		incident?: matchN(1, [#incident, list.MaxItems(1) & [...#incident]])
		sentinel_entity_mapping?: matchN(1, [#sentinel_entity_mapping, list.MaxItems(10) & [...#sentinel_entity_mapping]])
		timeouts?:          #timeouts
		trigger_threshold?: number
	})

	#alert_details_override: close({
		dynamic_property?: matchN(1, [_#defs."/$defs/alert_details_override/$defs/dynamic_property", [..._#defs."/$defs/alert_details_override/$defs/dynamic_property"]])
		description_format?:   string
		display_name_format?:  string
		severity_column_name?: string
		tactics_column_name?:  string
	})

	#entity_mapping: close({
		field_mapping!: matchN(1, [_#defs."/$defs/entity_mapping/$defs/field_mapping", list.MaxItems(3) & [_, ...] & [..._#defs."/$defs/entity_mapping/$defs/field_mapping"]])
		entity_type!: string
	})

	#event_grouping: close({
		aggregation_method!: string
	})

	#incident: close({
		grouping!: matchN(1, [_#defs."/$defs/incident/$defs/grouping", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/incident/$defs/grouping"]])
		create_incident_enabled!: bool
	})

	#sentinel_entity_mapping: close({
		column_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/alert_details_override/$defs/dynamic_property": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/entity_mapping/$defs/field_mapping": close({
		column_name!: string
		identifier!:  string
	})

	_#defs: "/$defs/incident/$defs/grouping": close({
		by_alert_details?: [...string]
		by_custom_details?: [...string]
		by_entities?: [...string]
		enabled?:                 bool
		entity_matching_method?:  string
		lookback_duration?:       string
		reopen_closed_incidents?: bool
	})
}
