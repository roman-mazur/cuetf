package res

import "list"

#aws_budgets_budget: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_budgets_budget")
	account_id?:   string
	arn?:          string
	budget_type!:  string
	id?:           string
	limit_amount?: string
	limit_unit?:   string
	name?:         string
	name_prefix?:  string
	tags?: [string]:     string
	tags_all?: [string]: string
	time_period_end?:   string
	time_period_start?: string
	time_unit!:         string
	auto_adjust_data?: #auto_adjust_data | list.MaxItems(1) & [...#auto_adjust_data]
	cost_filter?: #cost_filter | [...#cost_filter]
	cost_types?: #cost_types | list.MaxItems(1) & [...#cost_types]
	notification?: #notification | [...#notification]
	planned_limit?: #planned_limit | [...#planned_limit]

	#auto_adjust_data: {
		auto_adjust_type!:      string
		last_auto_adjust_time?: string
		historical_options?: #auto_adjust_data.#historical_options | list.MaxItems(1) & [...#auto_adjust_data.#historical_options]

		#historical_options: {
			budget_adjustment_period!:   number
			lookback_available_periods?: number
		}
	}

	#cost_filter: {
		name!: string
		values!: [...string]
	}

	#cost_types: {
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
	}

	#notification: {
		comparison_operator!: string
		notification_type!:   string
		subscriber_email_addresses?: [...string]
		subscriber_sns_topic_arns?: [...string]
		threshold!:      number
		threshold_type!: string
	}

	#planned_limit: {
		amount!:     string
		start_time!: string
		unit!:       string
	}
}
