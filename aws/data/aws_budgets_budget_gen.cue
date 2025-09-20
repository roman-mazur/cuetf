package data

#aws_budgets_budget: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_budgets_budget")
	close({
		account_id?: string
		arn?:        string
		auto_adjust_data?: [...close({
			auto_adjust_type?: string
			historical_options?: [...close({
				budget_adjustment_period?:   number
				lookback_available_periods?: number
			})]
			last_auto_adjust_time?: string
		})]
		billing_view_arn?: string
		budget_exceeded?:  bool
		budget_limit?: [...close({
			amount?: string
			unit?:   string
		})]
		budget_type?: string
		calculated_spend?: [...close({
			actual_spend?: [...close({
				amount?: string
				unit?:   string
			})]
		})]
		cost_filter?: [...close({
			name?: string
			values?: [...string]
		})]
		cost_types?: [...close({
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
		})]
		id?:          string
		name!:        string
		name_prefix?: string
		notification?: [...close({
			comparison_operator?: string
			notification_type?:   string
			subscriber_email_addresses?: [...string]
			subscriber_sns_topic_arns?: [...string]
			threshold?:      number
			threshold_type?: string
		})]
		planned_limit?: [...close({
			amount?:     string
			start_time?: string
			unit?:       string
		})]
		tags?: [string]: string
		time_period_end?:   string
		time_period_start?: string
		time_unit?:         string
	})
}
