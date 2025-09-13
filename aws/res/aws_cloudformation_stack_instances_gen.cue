package res

import "list"

#aws_cloudformation_stack_instances: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudformation_stack_instances")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		accounts?: [...string]
		call_as?: string
		id?:      string
		deployment_targets?: matchN(1, [#deployment_targets, list.MaxItems(1) & [...#deployment_targets]])

		// List of stack instances created from an organizational unit
		// deployment target. This will only be populated when
		// `deployment_targets` is set.
		stack_instance_summaries?: [...close({
			account_id?:             string
			detailed_status?:        string
			drift_status?:           string
			organizational_unit_id?: string
			region?:                 string
			stack_id?:               string
			stack_set_id?:           string
			status?:                 string
			status_reason?:          string
		})]
		parameter_overrides?: [string]: string
		operation_preferences?: matchN(1, [#operation_preferences, list.MaxItems(1) & [...#operation_preferences]])
		regions?: [...string]
		retain_stacks?:  bool
		stack_set_id?:   string
		stack_set_name!: string
		timeouts?:       #timeouts
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
