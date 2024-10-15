package res

#aws_computeoptimizer_recommendation_preferences: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_computeoptimizer_recommendation_preferences")
	enhanced_infrastructure_metrics?: string
	id?:                              string
	inferred_workload_types?:         string
	look_back_period?:                string
	resource_type!:                   string
	savings_estimation_mode?:         string
	external_metrics_preference?: #external_metrics_preference | [...#external_metrics_preference]
	preferred_resource?: #preferred_resource | [...#preferred_resource]
	scope?: #scope | [...#scope]
	utilization_preference?: #utilization_preference | [...#utilization_preference]

	#external_metrics_preference: source!: string

	#preferred_resource: {
		exclude_list?: [...string]
		include_list?: [...string]
		name!: string
	}

	#scope: {
		name!:  string
		value!: string
	}

	#utilization_preference: {
		metric_name!: string
		metric_parameters?: #utilization_preference.#metric_parameters | [...#utilization_preference.#metric_parameters]

		#metric_parameters: {
			headroom!:  string
			threshold?: string
		}
	}
}
