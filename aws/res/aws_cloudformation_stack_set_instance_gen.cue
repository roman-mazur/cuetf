package res

import "list"

#aws_cloudformation_stack_set_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudformation_stack_set_instance")
	account_id?:             string
	call_as?:                string
	id?:                     string
	organizational_unit_id?: string
	parameter_overrides?: [string]: string
	region?:       string
	retain_stack?: bool
	stack_id?:     string
	stack_instance_summaries?: [...{
		account_id?:             string
		organizational_unit_id?: string
		stack_id?:               string
	}]
	stack_set_name:         string
	deployment_targets?:    #deployment_targets | list.MaxItems(1) & [...#deployment_targets]
	operation_preferences?: #operation_preferences | list.MaxItems(1) & [...#operation_preferences]
	timeouts?:              #timeouts

	#deployment_targets: organizational_unit_ids?: [...string]

	#operation_preferences: {
		failure_tolerance_count?:      number
		failure_tolerance_percentage?: number
		max_concurrent_count?:         number
		max_concurrent_percentage?:    number
		region_concurrency_type?:      string
		region_order?: [...string]
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}