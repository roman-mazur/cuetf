package res

import "list"

#aws_autoscalingplans_scaling_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_autoscalingplans_scaling_plan")
	close({
		id?:                   string
		name!:                 string
		region?:               string
		scaling_plan_version?: number
		application_source?: matchN(1, [#application_source, list.MaxItems(1) & [_, ...] & [...#application_source]])
		scaling_instruction?: matchN(1, [#scaling_instruction, [_, ...] & [...#scaling_instruction]])
	})

	#application_source: close({
		cloudformation_stack_arn?: string
		tag_filter?: matchN(1, [_#defs."/$defs/application_source/$defs/tag_filter", list.MaxItems(50) & [..._#defs."/$defs/application_source/$defs/tag_filter"]])
	})

	#scaling_instruction: close({
		disable_dynamic_scaling?: bool
		max_capacity!:            number
		customized_load_metric_specification?: matchN(1, [_#defs."/$defs/scaling_instruction/$defs/customized_load_metric_specification", list.MaxItems(1) & [..._#defs."/$defs/scaling_instruction/$defs/customized_load_metric_specification"]])
		predefined_load_metric_specification?: matchN(1, [_#defs."/$defs/scaling_instruction/$defs/predefined_load_metric_specification", list.MaxItems(1) & [..._#defs."/$defs/scaling_instruction/$defs/predefined_load_metric_specification"]])
		min_capacity!:                             number
		predictive_scaling_max_capacity_behavior?: string
		target_tracking_configuration?: matchN(1, [_#defs."/$defs/scaling_instruction/$defs/target_tracking_configuration", list.MaxItems(10) & [_, ...] & [..._#defs."/$defs/scaling_instruction/$defs/target_tracking_configuration"]])
		predictive_scaling_max_capacity_buffer?: number
		predictive_scaling_mode?:                string
		resource_id!:                            string
		scalable_dimension!:                     string
		scaling_policy_update_behavior?:         string
		scheduled_action_buffer_time?:           number
		service_namespace!:                      string
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
		disable_scale_in?: bool
		customized_scaling_metric_specification?: matchN(1, [_#defs."/$defs/scaling_instruction/$defs/target_tracking_configuration/$defs/customized_scaling_metric_specification", list.MaxItems(1) & [..._#defs."/$defs/scaling_instruction/$defs/target_tracking_configuration/$defs/customized_scaling_metric_specification"]])
		predefined_scaling_metric_specification?: matchN(1, [_#defs."/$defs/scaling_instruction/$defs/target_tracking_configuration/$defs/predefined_scaling_metric_specification", list.MaxItems(1) & [..._#defs."/$defs/scaling_instruction/$defs/target_tracking_configuration/$defs/predefined_scaling_metric_specification"]])
		estimated_instance_warmup?: number
		scale_in_cooldown?:         number
		scale_out_cooldown?:        number
		target_value!:              number
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
