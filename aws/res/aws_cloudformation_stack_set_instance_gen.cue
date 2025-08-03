package res

import "list"

#aws_cloudformation_stack_set_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudformation_stack_set_instance")
	close({
		account_id?: string
		call_as?:    string
		deployment_targets?: matchN(1, [#deployment_targets, list.MaxItems(1) & [...#deployment_targets]])
		operation_preferences?: matchN(1, [#operation_preferences, list.MaxItems(1) & [...#operation_preferences]])
		timeouts?:               #timeouts
		id?:                     string
		organizational_unit_id?: string
		parameter_overrides?: [string]: string
		retain_stack?: bool
		stack_id?:     string
		stack_instance_summaries?: [...close({
			account_id?:             string
			organizational_unit_id?: string
			stack_id?:               string
		})]
		stack_set_instance_region?: string
		stack_set_name!:            string
	})

	#deployment_targets: close({
		account_filter_type?: string
		accounts?: [...string]
		accounts_url?: string
		organizational_unit_ids?: [...string]
	})

	#operation_preferences: close({
		concurrency_mode?:             string
		failure_tolerance_count?:      number
		failure_tolerance_percentage?: number
		max_concurrent_count?:         number
		max_concurrent_percentage?:    number
		region_concurrency_type?:      string
		region_order?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
