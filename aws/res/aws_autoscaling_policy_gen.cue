package res

import "list"

#aws_autoscaling_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_autoscaling_policy")
	close({
		adjustment_type?:        string
		arn?:                    string
		autoscaling_group_name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                    string
		cooldown?:                  number
		enabled?:                   bool
		estimated_instance_warmup?: number
		id?:                        string
		metric_aggregation_type?:   string
		predictive_scaling_configuration?: matchN(1, [#predictive_scaling_configuration, list.MaxItems(1) & [...#predictive_scaling_configuration]])
		min_adjustment_magnitude?: number
		name!:                     string
		policy_type?:              string
		scaling_adjustment?:       number
		step_adjustment?: matchN(1, [#step_adjustment, [...#step_adjustment]])
		target_tracking_configuration?: matchN(1, [#target_tracking_configuration, list.MaxItems(1) & [...#target_tracking_configuration]])
	})

	#predictive_scaling_configuration: close({
		metric_specification?: matchN(1, [_#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification"]])
		max_capacity_breach_behavior?: string
		max_capacity_buffer?:          string
		mode?:                         string
		scheduling_buffer_time?:       string
	})

	#step_adjustment: close({
		metric_interval_lower_bound?: string
		metric_interval_upper_bound?: string
		scaling_adjustment!:          number
	})

	#target_tracking_configuration: close({
		customized_metric_specification?: matchN(1, [_#defs."/$defs/target_tracking_configuration/$defs/customized_metric_specification", list.MaxItems(1) & [..._#defs."/$defs/target_tracking_configuration/$defs/customized_metric_specification"]])
		predefined_metric_specification?: matchN(1, [_#defs."/$defs/target_tracking_configuration/$defs/predefined_metric_specification", list.MaxItems(1) & [..._#defs."/$defs/target_tracking_configuration/$defs/predefined_metric_specification"]])
		disable_scale_in?: bool
		target_value!:     number
	})

	_#defs: "/$defs/predictive_scaling_configuration/$defs/metric_specification": close({
		customized_capacity_metric_specification?: matchN(1, [_#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_capacity_metric_specification", list.MaxItems(1) & [..._#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_capacity_metric_specification"]])
		customized_load_metric_specification?: matchN(1, [_#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_load_metric_specification", list.MaxItems(1) & [..._#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_load_metric_specification"]])
		customized_scaling_metric_specification?: matchN(1, [_#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_scaling_metric_specification", list.MaxItems(1) & [..._#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_scaling_metric_specification"]])
		predefined_load_metric_specification?: matchN(1, [_#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/predefined_load_metric_specification", list.MaxItems(1) & [..._#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/predefined_load_metric_specification"]])
		predefined_metric_pair_specification?: matchN(1, [_#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/predefined_metric_pair_specification", list.MaxItems(1) & [..._#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/predefined_metric_pair_specification"]])
		predefined_scaling_metric_specification?: matchN(1, [_#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/predefined_scaling_metric_specification", list.MaxItems(1) & [..._#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/predefined_scaling_metric_specification"]])
		target_value!: number
	})

	_#defs: "/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_capacity_metric_specification": close({
		metric_data_queries?: matchN(1, [_#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_capacity_metric_specification/$defs/metric_data_queries", list.MaxItems(10) & [_, ...] & [..._#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_capacity_metric_specification/$defs/metric_data_queries"]])
	})

	_#defs: "/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_capacity_metric_specification/$defs/metric_data_queries": close({
		metric_stat?: matchN(1, [_#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_capacity_metric_specification/$defs/metric_data_queries/$defs/metric_stat", list.MaxItems(1) & [..._#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_capacity_metric_specification/$defs/metric_data_queries/$defs/metric_stat"]])
		expression?:  string
		id!:          string
		label?:       string
		return_data?: bool
	})

	_#defs: "/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_capacity_metric_specification/$defs/metric_data_queries/$defs/metric_stat": close({
		metric?: matchN(1, [_#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_capacity_metric_specification/$defs/metric_data_queries/$defs/metric_stat/$defs/metric", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_capacity_metric_specification/$defs/metric_data_queries/$defs/metric_stat/$defs/metric"]])
		stat!: string
		unit?: string
	})

	_#defs: "/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_capacity_metric_specification/$defs/metric_data_queries/$defs/metric_stat/$defs/metric": close({
		dimensions?: matchN(1, [_#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_capacity_metric_specification/$defs/metric_data_queries/$defs/metric_stat/$defs/metric/$defs/dimensions", [..._#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_capacity_metric_specification/$defs/metric_data_queries/$defs/metric_stat/$defs/metric/$defs/dimensions"]])
		metric_name!: string
		namespace!:   string
	})

	_#defs: "/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_capacity_metric_specification/$defs/metric_data_queries/$defs/metric_stat/$defs/metric/$defs/dimensions": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_load_metric_specification": close({
		metric_data_queries?: matchN(1, [_#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_load_metric_specification/$defs/metric_data_queries", list.MaxItems(10) & [_, ...] & [..._#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_load_metric_specification/$defs/metric_data_queries"]])
	})

	_#defs: "/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_load_metric_specification/$defs/metric_data_queries": close({
		metric_stat?: matchN(1, [_#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_load_metric_specification/$defs/metric_data_queries/$defs/metric_stat", list.MaxItems(1) & [..._#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_load_metric_specification/$defs/metric_data_queries/$defs/metric_stat"]])
		expression?:  string
		id!:          string
		label?:       string
		return_data?: bool
	})

	_#defs: "/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_load_metric_specification/$defs/metric_data_queries/$defs/metric_stat": close({
		metric?: matchN(1, [_#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_load_metric_specification/$defs/metric_data_queries/$defs/metric_stat/$defs/metric", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_load_metric_specification/$defs/metric_data_queries/$defs/metric_stat/$defs/metric"]])
		stat!: string
		unit?: string
	})

	_#defs: "/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_load_metric_specification/$defs/metric_data_queries/$defs/metric_stat/$defs/metric": close({
		dimensions?: matchN(1, [_#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_load_metric_specification/$defs/metric_data_queries/$defs/metric_stat/$defs/metric/$defs/dimensions", [..._#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_load_metric_specification/$defs/metric_data_queries/$defs/metric_stat/$defs/metric/$defs/dimensions"]])
		metric_name!: string
		namespace!:   string
	})

	_#defs: "/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_load_metric_specification/$defs/metric_data_queries/$defs/metric_stat/$defs/metric/$defs/dimensions": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_scaling_metric_specification": close({
		metric_data_queries?: matchN(1, [_#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_scaling_metric_specification/$defs/metric_data_queries", list.MaxItems(10) & [_, ...] & [..._#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_scaling_metric_specification/$defs/metric_data_queries"]])
	})

	_#defs: "/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_scaling_metric_specification/$defs/metric_data_queries": close({
		metric_stat?: matchN(1, [_#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_scaling_metric_specification/$defs/metric_data_queries/$defs/metric_stat", list.MaxItems(1) & [..._#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_scaling_metric_specification/$defs/metric_data_queries/$defs/metric_stat"]])
		expression?:  string
		id!:          string
		label?:       string
		return_data?: bool
	})

	_#defs: "/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_scaling_metric_specification/$defs/metric_data_queries/$defs/metric_stat": close({
		metric?: matchN(1, [_#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_scaling_metric_specification/$defs/metric_data_queries/$defs/metric_stat/$defs/metric", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_scaling_metric_specification/$defs/metric_data_queries/$defs/metric_stat/$defs/metric"]])
		stat!: string
		unit?: string
	})

	_#defs: "/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_scaling_metric_specification/$defs/metric_data_queries/$defs/metric_stat/$defs/metric": close({
		dimensions?: matchN(1, [_#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_scaling_metric_specification/$defs/metric_data_queries/$defs/metric_stat/$defs/metric/$defs/dimensions", [..._#defs."/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_scaling_metric_specification/$defs/metric_data_queries/$defs/metric_stat/$defs/metric/$defs/dimensions"]])
		metric_name!: string
		namespace!:   string
	})

	_#defs: "/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/customized_scaling_metric_specification/$defs/metric_data_queries/$defs/metric_stat/$defs/metric/$defs/dimensions": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/predefined_load_metric_specification": close({
		predefined_metric_type!: string
		resource_label?:         string
	})

	_#defs: "/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/predefined_metric_pair_specification": close({
		predefined_metric_type!: string
		resource_label?:         string
	})

	_#defs: "/$defs/predictive_scaling_configuration/$defs/metric_specification/$defs/predefined_scaling_metric_specification": close({
		predefined_metric_type!: string
		resource_label?:         string
	})

	_#defs: "/$defs/target_tracking_configuration/$defs/customized_metric_specification": close({
		metric_dimension?: matchN(1, [_#defs."/$defs/target_tracking_configuration/$defs/customized_metric_specification/$defs/metric_dimension", [..._#defs."/$defs/target_tracking_configuration/$defs/customized_metric_specification/$defs/metric_dimension"]])
		metric_name?: string
		namespace?:   string
		period?:      number
		statistic?:   string
		unit?:        string
		metrics?: matchN(1, [_#defs."/$defs/target_tracking_configuration/$defs/customized_metric_specification/$defs/metrics", [..._#defs."/$defs/target_tracking_configuration/$defs/customized_metric_specification/$defs/metrics"]])
	})

	_#defs: "/$defs/target_tracking_configuration/$defs/customized_metric_specification/$defs/metric_dimension": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/target_tracking_configuration/$defs/customized_metric_specification/$defs/metrics": close({
		metric_stat?: matchN(1, [_#defs."/$defs/target_tracking_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat", list.MaxItems(1) & [..._#defs."/$defs/target_tracking_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat"]])
		expression?:  string
		id!:          string
		label?:       string
		return_data?: bool
	})

	_#defs: "/$defs/target_tracking_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat": close({
		metric?: matchN(1, [_#defs."/$defs/target_tracking_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat/$defs/metric", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/target_tracking_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat/$defs/metric"]])
		period?: number
		stat!:   string
		unit?:   string
	})

	_#defs: "/$defs/target_tracking_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat/$defs/metric": close({
		dimensions?: matchN(1, [_#defs."/$defs/target_tracking_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat/$defs/metric/$defs/dimensions", [..._#defs."/$defs/target_tracking_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat/$defs/metric/$defs/dimensions"]])
		metric_name!: string
		namespace!:   string
	})

	_#defs: "/$defs/target_tracking_configuration/$defs/customized_metric_specification/$defs/metrics/$defs/metric_stat/$defs/metric/$defs/dimensions": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/target_tracking_configuration/$defs/predefined_metric_specification": close({
		predefined_metric_type!: string
		resource_label?:         string
	})
}
