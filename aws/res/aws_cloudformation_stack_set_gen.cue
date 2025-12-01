package res

import "list"

#aws_cloudformation_stack_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudformation_stack_set")
	close({
		administration_role_arn?: string
		arn?:                     string
		call_as?:                 string
		capabilities?: [...string]
		description?:         string
		execution_role_name?: string
		id?:                  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		name!:   string
		parameters?: [string]: string
		permission_model?: string
		auto_deployment?: matchN(1, [#auto_deployment, list.MaxItems(1) & [...#auto_deployment]])
		stack_set_id?: string
		managed_execution?: matchN(1, [#managed_execution, list.MaxItems(1) & [...#managed_execution]])
		tags?: [string]:     string
		tags_all?: [string]: string
		operation_preferences?: matchN(1, [#operation_preferences, list.MaxItems(1) & [...#operation_preferences]])
		timeouts?:      #timeouts
		template_body?: string
		template_url?:  string
	})

	#auto_deployment: close({
		enabled?:                          bool
		retain_stacks_on_account_removal?: bool
	})

	#managed_execution: close({
		active?: bool
	})

	#operation_preferences: close({
		failure_tolerance_count?:      number
		failure_tolerance_percentage?: number
		max_concurrent_count?:         number
		max_concurrent_percentage?:    number
		region_concurrency_type?:      string
		region_order?: [...string]
	})

	#timeouts: close({
		update?: string
	})
}
