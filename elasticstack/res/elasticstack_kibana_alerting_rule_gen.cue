package res

import "list"

#elasticstack_kibana_alerting_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_kibana_alerting_rule")
	close({
		alert_delay?:           number
		consumer!:              string
		enabled?:               bool
		id?:                    string
		interval!:              string
		last_execution_date?:   string
		last_execution_status?: string
		name!:                  string
		notify_when?:           string
		actions?: matchN(1, [#actions, [...#actions]])
		params!:            string
		rule_id?:           string
		rule_type_id!:      string
		scheduled_task_id?: string
		space_id?:          string
		tags?: [...string]
		throttle?: string
	})

	#actions: close({
		alerts_filter?: matchN(1, [_#defs."/$defs/actions/$defs/alerts_filter", list.MaxItems(1) & [..._#defs."/$defs/actions/$defs/alerts_filter"]])
		frequency?: matchN(1, [_#defs."/$defs/actions/$defs/frequency", list.MaxItems(1) & [..._#defs."/$defs/actions/$defs/frequency"]])
		group?:  string
		id!:     string
		params!: string
	})

	_#defs: "/$defs/actions/$defs/alerts_filter": close({
		timeframe?: matchN(1, [_#defs."/$defs/actions/$defs/alerts_filter/$defs/timeframe", list.MaxItems(1) & [..._#defs."/$defs/actions/$defs/alerts_filter/$defs/timeframe"]])
		kql?: string
	})

	_#defs: "/$defs/actions/$defs/alerts_filter/$defs/timeframe": close({
		days!: [...number]
		hours_end!:   string
		hours_start!: string
		timezone!:    string
	})

	_#defs: "/$defs/actions/$defs/frequency": close({
		notify_when!: string
		summary!:     bool
		throttle?:    string
	})
}
