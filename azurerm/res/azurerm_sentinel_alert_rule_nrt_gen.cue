package res

import "list"

#azurerm_sentinel_alert_rule_nrt: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_sentinel_alert_rule_nrt")
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
		alert_details_override?: matchN(1, [#alert_details_override, [...#alert_details_override]])
		entity_mapping?: matchN(1, [#entity_mapping, list.MaxItems(5) & [...#entity_mapping]])
		severity!:             string
		suppression_duration?: string
		event_grouping?: matchN(1, [#event_grouping, list.MaxItems(1) & [_, ...] & [...#event_grouping]])
		suppression_enabled?: bool
		incident?: matchN(1, [#incident, list.MaxItems(1) & [...#incident]])
		tactics?: [...string]
		sentinel_entity_mapping?: matchN(1, [#sentinel_entity_mapping, list.MaxItems(5) & [...#sentinel_entity_mapping]])
		techniques?: [...string]
		timeouts?: #timeouts
	})

	#alert_details_override: close({
		dynamic_property?: matchN(1, [_#defs."/$defs/alert_details_override/$defs/dynamic_property", [..._#defs."/$defs/alert_details_override/$defs/dynamic_property"]])
		description_format?:   string
		display_name_format?:  string
		severity_column_name?: string
		tactics_column_name?:  string
	})

	#entity_mapping: close({
		field_mapping?: matchN(1, [_#defs."/$defs/entity_mapping/$defs/field_mapping", list.MaxItems(3) & [_, ...] & [..._#defs."/$defs/entity_mapping/$defs/field_mapping"]])
		entity_type!: string
	})

	#event_grouping: close({
		aggregation_method!: string
	})

	#incident: close({
		grouping?: matchN(1, [_#defs."/$defs/incident/$defs/grouping", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/incident/$defs/grouping"]])
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
