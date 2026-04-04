package res

import "list"

#aws_budgets_budget: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_budgets_budget")
	close({
		auto_adjust_data?: matchN(1, [#auto_adjust_data, list.MaxItems(1) & [...#auto_adjust_data]])
		cost_filter?: matchN(1, [#cost_filter, [...#cost_filter]])
		cost_types?: matchN(1, [#cost_types, list.MaxItems(1) & [...#cost_types]])
		filter_expression?: matchN(1, [#filter_expression, list.MaxItems(1) & [...#filter_expression]])
		notification?: matchN(1, [#notification, [...#notification]])
		planned_limit?: matchN(1, [#planned_limit, [...#planned_limit]])
		account_id?:       string
		arn?:              string
		billing_view_arn?: string
		budget_type!:      string
		id?:               string
		limit_amount?:     string
		limit_unit?:       string
		name?:             string
		name_prefix?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
		time_period_end?:   string
		time_period_start?: string
		time_unit!:         string
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

	#filter_expression: close({
		and?: matchN(1, [_#defs."/$defs/filter_expression/$defs/and", [..._#defs."/$defs/filter_expression/$defs/and"]])
		cost_categories?: matchN(1, [_#defs."/$defs/filter_expression/$defs/cost_categories", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/cost_categories"]])
		dimensions?: matchN(1, [_#defs."/$defs/filter_expression/$defs/dimensions", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/dimensions"]])
		not?: matchN(1, [_#defs."/$defs/filter_expression/$defs/not", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/not"]])
		or?: matchN(1, [_#defs."/$defs/filter_expression/$defs/or", [..._#defs."/$defs/filter_expression/$defs/or"]])
		tags?: matchN(1, [_#defs."/$defs/filter_expression/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/tags"]])
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

	_#defs: "/$defs/filter_expression/$defs/and": close({
		and?: matchN(1, [_#defs."/$defs/filter_expression/$defs/and/$defs/and", [..._#defs."/$defs/filter_expression/$defs/and/$defs/and"]])
		cost_categories?: matchN(1, [_#defs."/$defs/filter_expression/$defs/and/$defs/cost_categories", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/and/$defs/cost_categories"]])
		dimensions?: matchN(1, [_#defs."/$defs/filter_expression/$defs/and/$defs/dimensions", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/and/$defs/dimensions"]])
		not?: matchN(1, [_#defs."/$defs/filter_expression/$defs/and/$defs/not", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/and/$defs/not"]])
		or?: matchN(1, [_#defs."/$defs/filter_expression/$defs/and/$defs/or", [..._#defs."/$defs/filter_expression/$defs/and/$defs/or"]])
		tags?: matchN(1, [_#defs."/$defs/filter_expression/$defs/and/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/and/$defs/tags"]])
	})

	_#defs: "/$defs/filter_expression/$defs/and/$defs/and": close({
		cost_categories?: matchN(1, [_#defs."/$defs/filter_expression/$defs/and/$defs/and/$defs/cost_categories", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/and/$defs/and/$defs/cost_categories"]])
		dimensions?: matchN(1, [_#defs."/$defs/filter_expression/$defs/and/$defs/and/$defs/dimensions", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/and/$defs/and/$defs/dimensions"]])
		tags?: matchN(1, [_#defs."/$defs/filter_expression/$defs/and/$defs/and/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/and/$defs/and/$defs/tags"]])
	})

	_#defs: "/$defs/filter_expression/$defs/and/$defs/and/$defs/cost_categories": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/and/$defs/and/$defs/dimensions": close({
		key!: string
		match_options?: [...string]
		values!: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/and/$defs/and/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/and/$defs/cost_categories": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/and/$defs/dimensions": close({
		key!: string
		match_options?: [...string]
		values!: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/and/$defs/not": close({
		cost_categories?: matchN(1, [_#defs."/$defs/filter_expression/$defs/and/$defs/not/$defs/cost_categories", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/and/$defs/not/$defs/cost_categories"]])
		dimensions?: matchN(1, [_#defs."/$defs/filter_expression/$defs/and/$defs/not/$defs/dimensions", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/and/$defs/not/$defs/dimensions"]])
		tags?: matchN(1, [_#defs."/$defs/filter_expression/$defs/and/$defs/not/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/and/$defs/not/$defs/tags"]])
	})

	_#defs: "/$defs/filter_expression/$defs/and/$defs/not/$defs/cost_categories": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/and/$defs/not/$defs/dimensions": close({
		key!: string
		match_options?: [...string]
		values!: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/and/$defs/not/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/and/$defs/or": close({
		cost_categories?: matchN(1, [_#defs."/$defs/filter_expression/$defs/and/$defs/or/$defs/cost_categories", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/and/$defs/or/$defs/cost_categories"]])
		dimensions?: matchN(1, [_#defs."/$defs/filter_expression/$defs/and/$defs/or/$defs/dimensions", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/and/$defs/or/$defs/dimensions"]])
		tags?: matchN(1, [_#defs."/$defs/filter_expression/$defs/and/$defs/or/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/and/$defs/or/$defs/tags"]])
	})

	_#defs: "/$defs/filter_expression/$defs/and/$defs/or/$defs/cost_categories": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/and/$defs/or/$defs/dimensions": close({
		key!: string
		match_options?: [...string]
		values!: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/and/$defs/or/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/and/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/cost_categories": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/dimensions": close({
		key!: string
		match_options?: [...string]
		values!: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/not": close({
		and?: matchN(1, [_#defs."/$defs/filter_expression/$defs/not/$defs/and", [..._#defs."/$defs/filter_expression/$defs/not/$defs/and"]])
		cost_categories?: matchN(1, [_#defs."/$defs/filter_expression/$defs/not/$defs/cost_categories", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/not/$defs/cost_categories"]])
		dimensions?: matchN(1, [_#defs."/$defs/filter_expression/$defs/not/$defs/dimensions", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/not/$defs/dimensions"]])
		not?: matchN(1, [_#defs."/$defs/filter_expression/$defs/not/$defs/not", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/not/$defs/not"]])
		or?: matchN(1, [_#defs."/$defs/filter_expression/$defs/not/$defs/or", [..._#defs."/$defs/filter_expression/$defs/not/$defs/or"]])
		tags?: matchN(1, [_#defs."/$defs/filter_expression/$defs/not/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/not/$defs/tags"]])
	})

	_#defs: "/$defs/filter_expression/$defs/not/$defs/and": close({
		cost_categories?: matchN(1, [_#defs."/$defs/filter_expression/$defs/not/$defs/and/$defs/cost_categories", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/not/$defs/and/$defs/cost_categories"]])
		dimensions?: matchN(1, [_#defs."/$defs/filter_expression/$defs/not/$defs/and/$defs/dimensions", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/not/$defs/and/$defs/dimensions"]])
		tags?: matchN(1, [_#defs."/$defs/filter_expression/$defs/not/$defs/and/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/not/$defs/and/$defs/tags"]])
	})

	_#defs: "/$defs/filter_expression/$defs/not/$defs/and/$defs/cost_categories": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/not/$defs/and/$defs/dimensions": close({
		key!: string
		match_options?: [...string]
		values!: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/not/$defs/and/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/not/$defs/cost_categories": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/not/$defs/dimensions": close({
		key!: string
		match_options?: [...string]
		values!: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/not/$defs/not": close({
		cost_categories?: matchN(1, [_#defs."/$defs/filter_expression/$defs/not/$defs/not/$defs/cost_categories", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/not/$defs/not/$defs/cost_categories"]])
		dimensions?: matchN(1, [_#defs."/$defs/filter_expression/$defs/not/$defs/not/$defs/dimensions", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/not/$defs/not/$defs/dimensions"]])
		tags?: matchN(1, [_#defs."/$defs/filter_expression/$defs/not/$defs/not/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/not/$defs/not/$defs/tags"]])
	})

	_#defs: "/$defs/filter_expression/$defs/not/$defs/not/$defs/cost_categories": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/not/$defs/not/$defs/dimensions": close({
		key!: string
		match_options?: [...string]
		values!: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/not/$defs/not/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/not/$defs/or": close({
		cost_categories?: matchN(1, [_#defs."/$defs/filter_expression/$defs/not/$defs/or/$defs/cost_categories", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/not/$defs/or/$defs/cost_categories"]])
		dimensions?: matchN(1, [_#defs."/$defs/filter_expression/$defs/not/$defs/or/$defs/dimensions", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/not/$defs/or/$defs/dimensions"]])
		tags?: matchN(1, [_#defs."/$defs/filter_expression/$defs/not/$defs/or/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/not/$defs/or/$defs/tags"]])
	})

	_#defs: "/$defs/filter_expression/$defs/not/$defs/or/$defs/cost_categories": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/not/$defs/or/$defs/dimensions": close({
		key!: string
		match_options?: [...string]
		values!: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/not/$defs/or/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/not/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/or": close({
		and?: matchN(1, [_#defs."/$defs/filter_expression/$defs/or/$defs/and", [..._#defs."/$defs/filter_expression/$defs/or/$defs/and"]])
		cost_categories?: matchN(1, [_#defs."/$defs/filter_expression/$defs/or/$defs/cost_categories", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/or/$defs/cost_categories"]])
		dimensions?: matchN(1, [_#defs."/$defs/filter_expression/$defs/or/$defs/dimensions", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/or/$defs/dimensions"]])
		not?: matchN(1, [_#defs."/$defs/filter_expression/$defs/or/$defs/not", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/or/$defs/not"]])
		or?: matchN(1, [_#defs."/$defs/filter_expression/$defs/or/$defs/or", [..._#defs."/$defs/filter_expression/$defs/or/$defs/or"]])
		tags?: matchN(1, [_#defs."/$defs/filter_expression/$defs/or/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/or/$defs/tags"]])
	})

	_#defs: "/$defs/filter_expression/$defs/or/$defs/and": close({
		cost_categories?: matchN(1, [_#defs."/$defs/filter_expression/$defs/or/$defs/and/$defs/cost_categories", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/or/$defs/and/$defs/cost_categories"]])
		dimensions?: matchN(1, [_#defs."/$defs/filter_expression/$defs/or/$defs/and/$defs/dimensions", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/or/$defs/and/$defs/dimensions"]])
		tags?: matchN(1, [_#defs."/$defs/filter_expression/$defs/or/$defs/and/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/or/$defs/and/$defs/tags"]])
	})

	_#defs: "/$defs/filter_expression/$defs/or/$defs/and/$defs/cost_categories": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/or/$defs/and/$defs/dimensions": close({
		key!: string
		match_options?: [...string]
		values!: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/or/$defs/and/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/or/$defs/cost_categories": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/or/$defs/dimensions": close({
		key!: string
		match_options?: [...string]
		values!: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/or/$defs/not": close({
		cost_categories?: matchN(1, [_#defs."/$defs/filter_expression/$defs/or/$defs/not/$defs/cost_categories", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/or/$defs/not/$defs/cost_categories"]])
		dimensions?: matchN(1, [_#defs."/$defs/filter_expression/$defs/or/$defs/not/$defs/dimensions", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/or/$defs/not/$defs/dimensions"]])
		tags?: matchN(1, [_#defs."/$defs/filter_expression/$defs/or/$defs/not/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/or/$defs/not/$defs/tags"]])
	})

	_#defs: "/$defs/filter_expression/$defs/or/$defs/not/$defs/cost_categories": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/or/$defs/not/$defs/dimensions": close({
		key!: string
		match_options?: [...string]
		values!: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/or/$defs/not/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/or/$defs/or": close({
		cost_categories?: matchN(1, [_#defs."/$defs/filter_expression/$defs/or/$defs/or/$defs/cost_categories", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/or/$defs/or/$defs/cost_categories"]])
		dimensions?: matchN(1, [_#defs."/$defs/filter_expression/$defs/or/$defs/or/$defs/dimensions", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/or/$defs/or/$defs/dimensions"]])
		tags?: matchN(1, [_#defs."/$defs/filter_expression/$defs/or/$defs/or/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/filter_expression/$defs/or/$defs/or/$defs/tags"]])
	})

	_#defs: "/$defs/filter_expression/$defs/or/$defs/or/$defs/cost_categories": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/or/$defs/or/$defs/dimensions": close({
		key!: string
		match_options?: [...string]
		values!: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/or/$defs/or/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/or/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter_expression/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})
}
