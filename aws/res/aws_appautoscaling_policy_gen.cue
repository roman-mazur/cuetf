package res

import "list"

#aws_appautoscaling_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appautoscaling_policy")
	close({
		alarm_arns?: [...string]
		arn?:  string
		id?:   string
		name!: string
		step_scaling_policy_configuration?: matchN(1, [#step_scaling_policy_configuration, list.MaxItems(1) & [...#step_scaling_policy_configuration]])
		policy_type?:        string
		region?:             string
		resource_id!:        string
		scalable_dimension!: string
		service_namespace!:  string
		target_tracking_scaling_policy_configuration?: matchN(1, [#target_tracking_scaling_policy_configuration, list.MaxItems(1) & [...#target_tracking_scaling_policy_configuration]])
	})

	#step_scaling_policy_configuration: close({
		step_adjustment?: matchN(1, [_#defs."/$defs/step_scaling_policy_configuration/$defs/step_adjustment", [..._#defs."/$defs/step_scaling_policy_configuration/$defs/step_adjustment"]])
		adjustment_type?:          string
		cooldown?:                 number
		metric_aggregation_type?:  string
		min_adjustment_magnitude?: number
	})

	#target_tracking_scaling_policy_configuration: close({
		customized_metric_specification?: matchN(1, [_#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification", list.MaxItems(1) & [..._#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification"]])
		disable_scale_in?:   bool
		scale_in_cooldown?:  number
		scale_out_cooldown?: number
		target_value!:       number
		predefined_metric_specification?: matchN(1, [_#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/predefined_metric_specification", list.MaxItems(1) & [..._#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/predefined_metric_specification"]])
	})

	_#defs: "/$defs/step_scaling_policy_configuration/$defs/step_adjustment": close({
		metric_interval_lower_bound?: string
		metric_interval_upper_bound?: string
		scaling_adjustment!:          number
	})

	_#defs: "/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification": close({
		dimensions?: matchN(1, [_#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/dimensions", [..._#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/dimensions"]])
		metric_name?: string
		namespace?:   string
		statistic?:   string
		unit?:        string
		metrics?: matchN(1, [_#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics", [..._#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics"]])
	})

	_#defs: "/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/dimensions": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics": close({
		metric_stat?: matchN(1, [_#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat", list.MaxItems(1) & [..._#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat"]])
		expression?:  string
		id!:          string
		label?:       string
		return_data?: bool
	})

	_#defs: "/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat": close({
		metric?: matchN(1, [_#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat/$defs/metric", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat/$defs/metric"]])
		stat!: string
		unit?: string
	})

	_#defs: "/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat/$defs/metric": close({
		dimensions?: matchN(1, [_#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat/$defs/metric/$defs/dimensions", [..._#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat/$defs/metric/$defs/dimensions"]])
		metric_name!: string
		namespace!:   string
	})

	_#defs: "/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat/$defs/metric/$defs/dimensions": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/target_tracking_scaling_policy_configuration/$defs/predefined_metric_specification": close({
		predefined_metric_type!: string
		resource_label?:         string
	})
}
