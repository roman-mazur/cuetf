package res

import "list"

#elasticstack_kibana_alerting_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_kibana_alerting_rule")
	close({
		// A number that indicates how many consecutive runs need to meet
		// the rule conditions for an alert to occur.
		alert_delay?: number

		// The name of the application or feature that owns the rule.
		consumer!: string

		// Indicates if you want to run the rule on an interval basis.
		enabled?: bool

		// The check interval, which specifies how frequently the rule
		// conditions are checked. The interval must be specified in
		// seconds, minutes, hours or days.
		interval!: string

		// Date of the last execution of this rule.
		last_execution_date?: string

		// Status of the last execution of this rule.
		last_execution_status?: string
		id?:                    string

		// The name of the rule. While this name does not have to be
		// unique, a distinctive name can help you identify a rule.
		name!: string

		// Required until v8.6.0. Deprecated in v8.13.0. Use the
		// `notify_when` property in the action `frequency` object
		// instead. Defines how often alerts generate actions. Valid
		// values include: `onActionGroupChange`: Actions run when the
		// alert status changes; `onActiveAlert`: Actions run when the
		// alert becomes active and at each check interval while the rule
		// conditions are met; `onThrottleInterval`: Actions run when the
		// alert becomes active and at the interval specified in the
		// throttle property while the rule conditions are met. NOTE:
		// This is a rule level property; if you update the rule in
		// Kibana, it is automatically changed to use action-specific
		// `notify_when` values.
		notify_when?: string

		// The rule parameters, which differ for each rule type.
		params!: string
		actions?: matchN(1, [#actions, [...#actions]])

		// The identifier for the rule. Until Kibana version 8.17.0 this
		// should be a UUID v1 or v4, for later versions any format can
		// be used. If it is omitted, an ID is randomly generated.
		rule_id?: string

		// The ID of the rule type that you want to call when the rule is
		// scheduled to run. For more information about the valid values,
		// list the rule types using [Get rule types
		// API](https://www.elastic.co/guide/en/kibana/master/list-rule-types-api.html)
		// or refer to the [Rule types
		// documentation](https://www.elastic.co/guide/en/kibana/master/rule-types.html).
		rule_type_id!: string

		// ID of the scheduled task that will execute the alert.
		scheduled_task_id?: string

		// An identifier for the space. If space_id is not provided, the
		// default space is used.
		space_id?: string

		// A list of tag names that are applied to the rule.
		tags?: [...string]

		// Deprecated in 8.13.0. Defines how often an alert generates
		// repeated actions. This custom action interval must be
		// specified in seconds, minutes, hours, or days. For example,
		// 10m or 1h. This property is applicable only if `notify_when`
		// is `onThrottleInterval`. NOTE: This is a rule level property;
		// if you update the rule in Kibana, it is automatically changed
		// to use action-specific `throttle` values.
		throttle?: string
	})

	#actions: close({
		// The group name, which affects when the action runs (for
		// example, when the threshold is met or when the alert is
		// recovered). Each rule type has a list of valid action group
		// names.
		group?: string

		// The identifier for the connector saved object.
		id!: string
		alerts_filter?: matchN(1, [_#defs."/$defs/actions/$defs/alerts_filter", list.MaxItems(1) & [..._#defs."/$defs/actions/$defs/alerts_filter"]])

		// The parameters for the action, which are sent to the connector.
		params!: string
		frequency?: matchN(1, [_#defs."/$defs/actions/$defs/frequency", list.MaxItems(1) & [..._#defs."/$defs/actions/$defs/frequency"]])
	})

	_#defs: "/$defs/actions/$defs/alerts_filter": close({
		timeframe?: matchN(1, [_#defs."/$defs/actions/$defs/alerts_filter/$defs/timeframe", list.MaxItems(1) & [..._#defs."/$defs/actions/$defs/alerts_filter/$defs/timeframe"]])

		// Defines a query filter that determines whether the action runs.
		// Written in Kibana Query Language (KQL).
		kql?: string
	})

	_#defs: "/$defs/actions/$defs/alerts_filter/$defs/timeframe": close({
		// Defines the days of the week that the action can run,
		// represented as an array of numbers. For example, 1 represents
		// Monday. An empty array is equivalent to specifying all the
		// days of the week.
		days!: [...number]

		// Defines the range of time in a day that the action can run. The
		// end of the time frame in 24-hour notation (hh:mm).
		hours_end!: string

		// Defines the range of time in a day that the action can run. The
		// start of the time frame in 24-hour notation (hh:mm).
		hours_start!: string

		// The ISO time zone for the hours values. Values such as UTC and
		// UTC+1 also work but lack built-in daylight savings time
		// support and are not recommended.
		timezone!: string
	})

	_#defs: "/$defs/actions/$defs/frequency": close({
		// Defines how often alerts generate actions. Valid values
		// include: `onActionGroupChange`: Actions run when the alert
		// status changes; `onActiveAlert`: Actions run when the alert
		// becomes active and at each check interval while the rule
		// conditions are met; `onThrottleInterval`: Actions run when the
		// alert becomes active and at the interval specified in the
		// throttle property while the rule conditions are met. NOTE:
		// This is a rule level property; if you update the rule in
		// Kibana, it is automatically changed to use action-specific
		// `notify_when` values.
		notify_when!: string

		// Indicates whether the action is a summary.
		summary!: bool

		// Defines how often an alert generates repeated actions. This
		// custom action interval must be specified in seconds, minutes,
		// hours, or days. For example, 10m or 1h. This property is
		// applicable only if `notify_when` is `onThrottleInterval`.
		// NOTE: This is a rule level property; if you update the rule in
		// Kibana, it is automatically changed to use action-specific
		// `throttle` values.
		throttle?: string
	})
}
