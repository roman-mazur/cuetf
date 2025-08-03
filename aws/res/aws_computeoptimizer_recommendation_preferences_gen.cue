package res

#aws_computeoptimizer_recommendation_preferences: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_computeoptimizer_recommendation_preferences")
	close({
		enhanced_infrastructure_metrics?: string
		id?:                              string
		external_metrics_preference?: matchN(1, [#external_metrics_preference, [...#external_metrics_preference]])
		preferred_resource?: matchN(1, [#preferred_resource, [...#preferred_resource]])
		scope?: matchN(1, [#scope, [...#scope]])
		utilization_preference?: matchN(1, [#utilization_preference, [...#utilization_preference]])
		inferred_workload_types?: string
		look_back_period?:        string
		region?:                  string
		resource_type!:           string
		savings_estimation_mode?: string
	})

	#external_metrics_preference: close({
		source!: string
	})

	#preferred_resource: close({
		exclude_list?: [...string]
		include_list?: [...string]
		name!: string
	})

	#scope: close({
		name!:  string
		value!: string
	})

	#utilization_preference: close({
		metric_name!: string
		metric_parameters?: matchN(1, [_#defs."/$defs/utilization_preference/$defs/metric_parameters", [..._#defs."/$defs/utilization_preference/$defs/metric_parameters"]])
	})

	_#defs: "/$defs/utilization_preference/$defs/metric_parameters": close({
		headroom!:  string
		threshold?: string
	})
}
