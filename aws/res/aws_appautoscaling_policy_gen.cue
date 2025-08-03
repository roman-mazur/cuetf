package res

import "list"

#aws_appautoscaling_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appautoscaling_policy")
	close({
		alarm_arns?: [...string]
		step_scaling_policy_configuration?: matchN(1, [#step_scaling_policy_configuration, list.MaxItems(1) & [...#step_scaling_policy_configuration]])
		target_tracking_scaling_policy_configuration?: matchN(1, [#target_tracking_scaling_policy_configuration, list.MaxItems(1) & [...#target_tracking_scaling_policy_configuration]])
		arn?:                string
		id?:                 string
		name!:               string
		policy_type?:        string
		region?:             string
		resource_id!:        string
		scalable_dimension!: string
		service_namespace!:  string
	})

	#step_scaling_policy_configuration: close({
		adjustment_type?:          string
		cooldown?:                 number
		metric_aggregation_type?:  string
		min_adjustment_magnitude?: number
		step_adjustment?: matchN(1, [_#defs."/$defs/step_scaling_policy_configuration/$defs/step_adjustment", [..._#defs."/$defs/step_scaling_policy_configuration/$defs/step_adjustment"]])
	})

	#target_tracking_scaling_policy_configuration: close({
		disable_scale_in?:   bool
		scale_in_cooldown?:  number
		scale_out_cooldown?: number
		target_value!:       number
		customized_metric_specification?: matchN(1, [_#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification", list.MaxItems(1) & [..._#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification"]])
		predefined_metric_specification?: matchN(1, [_#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/predefined_metric_specification", list.MaxItems(1) & [..._#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/predefined_metric_specification"]])
	})

	_#defs: "/$defs/step_scaling_policy_configuration/$defs/step_adjustment": close({
		metric_interval_lower_bound?: string
		metric_interval_upper_bound?: string
		scaling_adjustment!:          number
	})

	_#defs: "/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification": close({
		metric_name?: string
		namespace?:   string
		statistic?:   string
		unit?:        string
		dimensions?: matchN(1, [_#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/dimensions", [..._#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/dimensions"]])
		metrics?: matchN(1, [_#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics", [..._#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics"]])
	})

	_#defs: "/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/dimensions": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics": close({
		expression?:  string
		id!:          string
		label?:       string
		return_data?: bool
		metric_stat?: matchN(1, [_#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat", list.MaxItems(1) & [..._#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat"]])
	})

	_#defs: "/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat": close({
		stat!: string
		unit?: string
		metric?: matchN(1, [_#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat/$defs/metric", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat/$defs/metric"]])
	})

	_#defs: "/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat/$defs/metric": close({
		metric_name!: string
		namespace!:   string
		dimensions?: matchN(1, [_#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat/$defs/metric/$defs/dimensions", [..._#defs."/$defs/target_tracking_scaling_policy_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat/$defs/metric/$defs/dimensions"]])
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
