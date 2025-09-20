package res

import "list"

#aws_budgets_budget: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_budgets_budget")
	close({
		account_id?: string
		auto_adjust_data?: matchN(1, [#auto_adjust_data, list.MaxItems(1) & [...#auto_adjust_data]])
		arn?:              string
		billing_view_arn?: string
		budget_type!:      string
		id?:               string
		limit_amount?:     string
		limit_unit?:       string
		name?:             string
		cost_filter?: matchN(1, [#cost_filter, [...#cost_filter]])
		cost_types?: matchN(1, [#cost_types, list.MaxItems(1) & [...#cost_types]])
		name_prefix?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		time_period_end?:   string
		time_period_start?: string
		notification?: matchN(1, [#notification, [...#notification]])
		planned_limit?: matchN(1, [#planned_limit, [...#planned_limit]])
		time_unit!: string
	})

	#auto_adjust_data: close({
		historical_options?: matchN(1, [_#defs."/$defs/auto_adjust_data/$defs/historical_options", list.MaxItems(1) & [..._#defs."/$defs/auto_adjust_data/$defs/historical_options"]])
		auto_adjust_type!:      string
		last_auto_adjust_time?: string
	})

	#cost_filter: close({
		name!: string
		values!: [...string]
	})

	#cost_types: close({
		include_credit?:             bool
		include_discount?:           bool
		include_other_subscription?: bool
		include_recurring?:          bool
		include_refund?:             bool
		include_subscription?:       bool
		include_support?:            bool
		include_tax?:                bool
		include_upfront?:            bool
		use_amortized?:              bool
		use_blended?:                bool
	})

	#notification: close({
		comparison_operator!: string
		notification_type!:   string
		subscriber_email_addresses?: [...string]
		subscriber_sns_topic_arns?: [...string]
		threshold!:      number
		threshold_type!: string
	})

	#planned_limit: close({
		amount!:     string
		start_time!: string
		unit!:       string
	})

	_#defs: "/$defs/auto_adjust_data/$defs/historical_options": close({
		budget_adjustment_period!:   number
		lookback_available_periods?: number
	})
}
