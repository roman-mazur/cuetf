package res

import "list"

#aws_autoscalingplans_scaling_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_autoscalingplans_scaling_plan")
	close({
		id?:   string
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		scaling_plan_version?: number
		application_source?: matchN(1, [#application_source, list.MaxItems(1) & [_, ...] & [...#application_source]])
		scaling_instruction?: matchN(1, [#scaling_instruction, [_, ...] & [...#scaling_instruction]])
	})

	#application_source: close({
		tag_filter?: matchN(1, [_#defs."/$defs/application_source/$defs/tag_filter", list.MaxItems(50) & [..._#defs."/$defs/application_source/$defs/tag_filter"]])
		cloudformation_stack_arn?: string
	})

	#scaling_instruction: close({
		disable_dynamic_scaling?:                  bool
		max_capacity!:                             number
		min_capacity!:                             number
		predictive_scaling_max_capacity_behavior?: string
		customized_load_metric_specification?: matchN(1, [_#defs."/$defs/scaling_instruction/$defs/customized_load_metric_specification", list.MaxItems(1) & [..._#defs."/$defs/scaling_instruction/$defs/customized_load_metric_specification"]])
		predictive_scaling_max_capacity_buffer?: number
		predictive_scaling_mode?:                string
		resource_id!:                            string
		scalable_dimension!:                     string
		scaling_policy_update_behavior?:         string
		scheduled_action_buffer_time?:           number
		predefined_load_metric_specification?: matchN(1, [_#defs."/$defs/scaling_instruction/$defs/predefined_load_metric_specification", list.MaxItems(1) & [..._#defs."/$defs/scaling_instruction/$defs/predefined_load_metric_specification"]])
		target_tracking_configuration?: matchN(1, [_#defs."/$defs/scaling_instruction/$defs/target_tracking_configuration", list.MaxItems(10) & [_, ...] & [..._#defs."/$defs/scaling_instruction/$defs/target_tracking_configuration"]])
		service_namespace!: string
	})

	_#defs: "/$defs/application_source/$defs/tag_filter": close({
		key!: string
		values?: [...string]
	})

	_#defs: "/$defs/scaling_instruction/$defs/customized_load_metric_specification": close({
		dimensions?: [string]: string
		metric_name!: string
		namespace!:   string
		statistic!:   string
		unit?:        string
	})

	_#defs: "/$defs/scaling_instruction/$defs/predefined_load_metric_specification": close({
		predefined_load_metric_type!: string
		resource_label?:              string
	})

	_#defs: "/$defs/scaling_instruction/$defs/target_tracking_configuration": close({
		customized_scaling_metric_specification?: matchN(1, [_#defs."/$defs/scaling_instruction/$defs/target_tracking_configuration/$defs/customized_scaling_metric_specification", list.MaxItems(1) & [..._#defs."/$defs/scaling_instruction/$defs/target_tracking_configuration/$defs/customized_scaling_metric_specification"]])
		disable_scale_in?:          bool
		estimated_instance_warmup?: number
		scale_in_cooldown?:         number
		scale_out_cooldown?:        number
		target_value!:              number
		predefined_scaling_metric_specification?: matchN(1, [_#defs."/$defs/scaling_instruction/$defs/target_tracking_configuration/$defs/predefined_scaling_metric_specification", list.MaxItems(1) & [..._#defs."/$defs/scaling_instruction/$defs/target_tracking_configuration/$defs/predefined_scaling_metric_specification"]])
	})

	_#defs: "/$defs/scaling_instruction/$defs/target_tracking_configuration/$defs/customized_scaling_metric_specification": close({
		dimensions?: [string]: string
		metric_name!: string
		namespace!:   string
		statistic!:   string
		unit?:        string
	})

	_#defs: "/$defs/scaling_instruction/$defs/target_tracking_configuration/$defs/predefined_scaling_metric_specification": close({
		predefined_scaling_metric_type!: string
		resource_label?:                 string
	})
}
