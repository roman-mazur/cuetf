package res

#aws_computeoptimizer_recommendation_preferences: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_computeoptimizer_recommendation_preferences")
	close({
		enhanced_infrastructure_metrics?: string
		id?:                              string
		inferred_workload_types?:         string
		look_back_period?:                string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		resource_type!: string
		external_metrics_preference?: matchN(1, [#external_metrics_preference, [...#external_metrics_preference]])
		savings_estimation_mode?: string
		preferred_resource?: matchN(1, [#preferred_resource, [...#preferred_resource]])
		scope?: matchN(1, [#scope, [...#scope]])
		utilization_preference?: matchN(1, [#utilization_preference, [...#utilization_preference]])
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
		metric_parameters?: matchN(1, [_#defs."/$defs/utilization_preference/$defs/metric_parameters", [..._#defs."/$defs/utilization_preference/$defs/metric_parameters"]])
		metric_name!: string
	})

	_#defs: "/$defs/utilization_preference/$defs/metric_parameters": close({
		headroom!:  string
		threshold?: string
	})
}
