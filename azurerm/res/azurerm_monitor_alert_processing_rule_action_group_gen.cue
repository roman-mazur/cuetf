package res

import "list"

#azurerm_monitor_alert_processing_rule_action_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_monitor_alert_processing_rule_action_group")
	close({
		add_action_group_ids!: [...string]
		description?: string
		enabled?:     bool
		id?:          string
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		name!:                string
		resource_group_name!: string
		scopes!: [...string]
		tags?: [string]: string
		schedule?: matchN(1, [#schedule, list.MaxItems(1) & [...#schedule]])
		timeouts?: #timeouts
	})

	#condition: close({
		alert_context?: matchN(1, [_#defs."/$defs/condition/$defs/alert_context", list.MaxItems(1) & [..._#defs."/$defs/condition/$defs/alert_context"]])
		alert_rule_id?: matchN(1, [_#defs."/$defs/condition/$defs/alert_rule_id", list.MaxItems(1) & [..._#defs."/$defs/condition/$defs/alert_rule_id"]])
		alert_rule_name?: matchN(1, [_#defs."/$defs/condition/$defs/alert_rule_name", list.MaxItems(1) & [..._#defs."/$defs/condition/$defs/alert_rule_name"]])
		description?: matchN(1, [_#defs."/$defs/condition/$defs/description", list.MaxItems(1) & [..._#defs."/$defs/condition/$defs/description"]])
		monitor_condition?: matchN(1, [_#defs."/$defs/condition/$defs/monitor_condition", list.MaxItems(1) & [..._#defs."/$defs/condition/$defs/monitor_condition"]])
		monitor_service?: matchN(1, [_#defs."/$defs/condition/$defs/monitor_service", list.MaxItems(1) & [..._#defs."/$defs/condition/$defs/monitor_service"]])
		severity?: matchN(1, [_#defs."/$defs/condition/$defs/severity", list.MaxItems(1) & [..._#defs."/$defs/condition/$defs/severity"]])
		signal_type?: matchN(1, [_#defs."/$defs/condition/$defs/signal_type", list.MaxItems(1) & [..._#defs."/$defs/condition/$defs/signal_type"]])
		target_resource?: matchN(1, [_#defs."/$defs/condition/$defs/target_resource", list.MaxItems(1) & [..._#defs."/$defs/condition/$defs/target_resource"]])
		target_resource_group?: matchN(1, [_#defs."/$defs/condition/$defs/target_resource_group", list.MaxItems(1) & [..._#defs."/$defs/condition/$defs/target_resource_group"]])
		target_resource_type?: matchN(1, [_#defs."/$defs/condition/$defs/target_resource_type", list.MaxItems(1) & [..._#defs."/$defs/condition/$defs/target_resource_type"]])
	})

	#schedule: close({
		recurrence?: matchN(1, [_#defs."/$defs/schedule/$defs/recurrence", list.MaxItems(1) & [..._#defs."/$defs/schedule/$defs/recurrence"]])
		effective_from?:  string
		effective_until?: string
		time_zone?:       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/condition/$defs/alert_context": close({
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/condition/$defs/alert_rule_id": close({
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/condition/$defs/alert_rule_name": close({
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/condition/$defs/description": close({
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/condition/$defs/monitor_condition": close({
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/condition/$defs/monitor_service": close({
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/condition/$defs/severity": close({
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/condition/$defs/signal_type": close({
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/condition/$defs/target_resource": close({
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/condition/$defs/target_resource_group": close({
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/condition/$defs/target_resource_type": close({
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/schedule/$defs/recurrence": close({
		daily?: matchN(1, [_#defs."/$defs/schedule/$defs/recurrence/$defs/daily", [..._#defs."/$defs/schedule/$defs/recurrence/$defs/daily"]])
		monthly?: matchN(1, [_#defs."/$defs/schedule/$defs/recurrence/$defs/monthly", [..._#defs."/$defs/schedule/$defs/recurrence/$defs/monthly"]])
		weekly?: matchN(1, [_#defs."/$defs/schedule/$defs/recurrence/$defs/weekly", [..._#defs."/$defs/schedule/$defs/recurrence/$defs/weekly"]])
	})

	_#defs: "/$defs/schedule/$defs/recurrence/$defs/daily": close({
		end_time!:   string
		start_time!: string
	})

	_#defs: "/$defs/schedule/$defs/recurrence/$defs/monthly": close({
		days_of_month!: [...number]
		end_time?:   string
		start_time?: string
	})

	_#defs: "/$defs/schedule/$defs/recurrence/$defs/weekly": close({
		days_of_week!: [...string]
		end_time?:   string
		start_time?: string
	})
}
