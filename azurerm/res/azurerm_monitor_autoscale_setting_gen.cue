package res

import "list"

#azurerm_monitor_autoscale_setting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_monitor_autoscale_setting")
	close({
		enabled?:             bool
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		notification?: matchN(1, [#notification, list.MaxItems(1) & [...#notification]])
		target_resource_id!: string
		predictive?: matchN(1, [#predictive, list.MaxItems(1) & [...#predictive]])
		profile!: matchN(1, [#profile, list.MaxItems(20) & [_, ...] & [...#profile]])
		timeouts?: #timeouts
	})

	#notification: close({
		email?: matchN(1, [_#defs."/$defs/notification/$defs/email", list.MaxItems(1) & [..._#defs."/$defs/notification/$defs/email"]])
		webhook?: matchN(1, [_#defs."/$defs/notification/$defs/webhook", [..._#defs."/$defs/notification/$defs/webhook"]])
	})

	#predictive: close({
		look_ahead_time?: string
		scale_mode!:      string
	})

	#profile: close({
		capacity!: matchN(1, [_#defs."/$defs/profile/$defs/capacity", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/profile/$defs/capacity"]])
		fixed_date?: matchN(1, [_#defs."/$defs/profile/$defs/fixed_date", list.MaxItems(1) & [..._#defs."/$defs/profile/$defs/fixed_date"]])
		recurrence?: matchN(1, [_#defs."/$defs/profile/$defs/recurrence", list.MaxItems(1) & [..._#defs."/$defs/profile/$defs/recurrence"]])
		rule?: matchN(1, [_#defs."/$defs/profile/$defs/rule", list.MaxItems(10) & [..._#defs."/$defs/profile/$defs/rule"]])
		name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/notification/$defs/email": close({
		custom_emails?: [...string]
		send_to_subscription_administrator?:    bool
		send_to_subscription_co_administrator?: bool
	})

	_#defs: "/$defs/notification/$defs/webhook": close({
		properties?: [string]: string
		service_uri!: string
	})

	_#defs: "/$defs/profile/$defs/capacity": close({
		default!: number
		maximum!: number
		minimum!: number
	})

	_#defs: "/$defs/profile/$defs/fixed_date": close({
		end!:      string
		start!:    string
		timezone?: string
	})

	_#defs: "/$defs/profile/$defs/recurrence": close({
		days!: [...string]
		hours!: [...number]
		minutes!: [...number]
		timezone?: string
	})

	_#defs: "/$defs/profile/$defs/rule": close({
		metric_trigger!: matchN(1, [_#defs."/$defs/profile/$defs/rule/$defs/metric_trigger", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/profile/$defs/rule/$defs/metric_trigger"]])
		scale_action!: matchN(1, [_#defs."/$defs/profile/$defs/rule/$defs/scale_action", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/profile/$defs/rule/$defs/scale_action"]])
	})

	_#defs: "/$defs/profile/$defs/rule/$defs/metric_trigger": close({
		divide_by_instance_count?: bool
		metric_name!:              string
		metric_namespace?:         string
		metric_resource_id!:       string
		operator!:                 string
		statistic!:                string
		threshold!:                number
		dimensions?: matchN(1, [_#defs."/$defs/profile/$defs/rule/$defs/metric_trigger/$defs/dimensions", [..._#defs."/$defs/profile/$defs/rule/$defs/metric_trigger/$defs/dimensions"]])
		time_aggregation!: string
		time_grain!:       string
		time_window!:      string
	})

	_#defs: "/$defs/profile/$defs/rule/$defs/metric_trigger/$defs/dimensions": close({
		name!:     string
		operator!: string
		values!: [...string]
	})

	_#defs: "/$defs/profile/$defs/rule/$defs/scale_action": close({
		cooldown!:  string
		direction!: string
		type!:      string
		value!:     number
	})
}
