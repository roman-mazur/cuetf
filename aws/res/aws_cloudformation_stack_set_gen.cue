package res

import "list"

#aws_cloudformation_stack_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudformation_stack_set")
	administration_role_arn?: string
	arn?:                     string
	call_as?:                 string
	capabilities?: [...string]
	description?:         string
	execution_role_name?: string
	id?:                  string
	name!:                string
	parameters?: [string]: string
	permission_model?: string
	stack_set_id?:     string
	tags?: [string]: string
	tags_all?: [string]: string
	template_body?: string
	template_url?:  string
	auto_deployment?: #auto_deployment | list.MaxItems(1) & [...#auto_deployment]
	managed_execution?: #managed_execution | list.MaxItems(1) & [...#managed_execution]
	operation_preferences?: #operation_preferences | list.MaxItems(1) & [...#operation_preferences]
	timeouts?: #timeouts

	#auto_deployment: {
		enabled?:                          bool
		retain_stacks_on_account_removal?: bool
	}

	#managed_execution: active?: bool

	#operation_preferences: {
		failure_tolerance_count?:      number
		failure_tolerance_percentage?: number
		max_concurrent_count?:         number
		max_concurrent_percentage?:    number
		region_concurrency_type?:      string
		region_order?: [...string]
	}

	#timeouts: update?: string
}
