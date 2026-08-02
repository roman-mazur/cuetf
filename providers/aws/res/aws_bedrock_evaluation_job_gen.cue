package res

aws_bedrock_evaluation_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_bedrock_evaluation_job")
	close({
		evaluation_config?: matchN(1, [#evaluation_config, [...#evaluation_config]])
		inference_config?: matchN(1, [#inference_config, [...#inference_config]])
		output_data_config?: matchN(1, [#output_data_config, [...#output_data_config]])
		timeouts?:         #timeouts
		application_type?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                     string
		created_at?:                 string
		customer_encryption_key_id?: string
		failure_messages?: [...string]
		job_arn?:            string
		job_description?:    string
		job_name!:           string
		job_type?:           string
		last_modified_time?: string
		role_arn!:           string
		skip_destroy?:       bool
		status?:             string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#evaluation_config: close({
		automated?: matchN(1, [_#defs."/$defs/evaluation_config/$defs/automated", [..._#defs."/$defs/evaluation_config/$defs/automated"]])
		human?: matchN(1, [_#defs."/$defs/evaluation_config/$defs/human", [..._#defs."/$defs/evaluation_config/$defs/human"]])
	})

	#inference_config: close({
		model?: matchN(1, [_#defs."/$defs/inference_config/$defs/model", [..._#defs."/$defs/inference_config/$defs/model"]])
		rag_config?: matchN(1, [_#defs."/$defs/inference_config/$defs/rag_config", [..._#defs."/$defs/inference_config/$defs/rag_config"]])
	})

	#output_data_config: close({
		s3_uri!: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
		// applicable if changes are saved into state before the destroy operation
		// occurs.
		delete?: string
	})

	_#defs: "/$defs/evaluation_config/$defs/automated": close({
		custom_metric_config?: matchN(1, [_#defs."/$defs/evaluation_config/$defs/automated/$defs/custom_metric_config", [..._#defs."/$defs/evaluation_config/$defs/automated/$defs/custom_metric_config"]])
		dataset_metric_config?: matchN(1, [_#defs."/$defs/evaluation_config/$defs/automated/$defs/dataset_metric_config", [..._#defs."/$defs/evaluation_config/$defs/automated/$defs/dataset_metric_config"]])
		evaluator_model_config?: matchN(1, [_#defs."/$defs/evaluation_config/$defs/automated/$defs/evaluator_model_config", [..._#defs."/$defs/evaluation_config/$defs/automated/$defs/evaluator_model_config"]])
	})

	_#defs: "/$defs/evaluation_config/$defs/automated/$defs/custom_metric_config": close({
		custom_metric?: matchN(1, [_#defs."/$defs/evaluation_config/$defs/automated/$defs/custom_metric_config/$defs/custom_metric", [..._#defs."/$defs/evaluation_config/$defs/automated/$defs/custom_metric_config/$defs/custom_metric"]])
		evaluator_model_config?: matchN(1, [_#defs."/$defs/evaluation_config/$defs/automated/$defs/custom_metric_config/$defs/evaluator_model_config", [..._#defs."/$defs/evaluation_config/$defs/automated/$defs/custom_metric_config/$defs/evaluator_model_config"]])
	})

	_#defs: "/$defs/evaluation_config/$defs/automated/$defs/custom_metric_config/$defs/custom_metric": close({
		custom_metric_definition?: matchN(1, [_#defs."/$defs/evaluation_config/$defs/automated/$defs/custom_metric_config/$defs/custom_metric/$defs/custom_metric_definition", [..._#defs."/$defs/evaluation_config/$defs/automated/$defs/custom_metric_config/$defs/custom_metric/$defs/custom_metric_definition"]])
	})

	_#defs: "/$defs/evaluation_config/$defs/automated/$defs/custom_metric_config/$defs/custom_metric/$defs/custom_metric_definition": close({
		rating_scale?: matchN(1, [_#defs."/$defs/evaluation_config/$defs/automated/$defs/custom_metric_config/$defs/custom_metric/$defs/custom_metric_definition/$defs/rating_scale", [..._#defs."/$defs/evaluation_config/$defs/automated/$defs/custom_metric_config/$defs/custom_metric/$defs/custom_metric_definition/$defs/rating_scale"]])
		instructions!: string
		name!:         string
	})

	_#defs: "/$defs/evaluation_config/$defs/automated/$defs/custom_metric_config/$defs/custom_metric/$defs/custom_metric_definition/$defs/rating_scale": close({
		value?: matchN(1, [_#defs."/$defs/evaluation_config/$defs/automated/$defs/custom_metric_config/$defs/custom_metric/$defs/custom_metric_definition/$defs/rating_scale/$defs/value", [..._#defs."/$defs/evaluation_config/$defs/automated/$defs/custom_metric_config/$defs/custom_metric/$defs/custom_metric_definition/$defs/rating_scale/$defs/value"]])
		definition!: string
	})

	_#defs: "/$defs/evaluation_config/$defs/automated/$defs/custom_metric_config/$defs/custom_metric/$defs/custom_metric_definition/$defs/rating_scale/$defs/value": close({
		float_value?:  number
		string_value?: string
	})

	_#defs: "/$defs/evaluation_config/$defs/automated/$defs/custom_metric_config/$defs/evaluator_model_config": close({
		bedrock_evaluator_model?: matchN(1, [_#defs."/$defs/evaluation_config/$defs/automated/$defs/custom_metric_config/$defs/evaluator_model_config/$defs/bedrock_evaluator_model", [..._#defs."/$defs/evaluation_config/$defs/automated/$defs/custom_metric_config/$defs/evaluator_model_config/$defs/bedrock_evaluator_model"]])
	})

	_#defs: "/$defs/evaluation_config/$defs/automated/$defs/custom_metric_config/$defs/evaluator_model_config/$defs/bedrock_evaluator_model": close({
		model_identifier!: string
	})

	_#defs: "/$defs/evaluation_config/$defs/automated/$defs/dataset_metric_config": close({
		dataset?: matchN(1, [_#defs."/$defs/evaluation_config/$defs/automated/$defs/dataset_metric_config/$defs/dataset", [..._#defs."/$defs/evaluation_config/$defs/automated/$defs/dataset_metric_config/$defs/dataset"]])
		metric_names!: [...string]
		task_type!: string
	})

	_#defs: "/$defs/evaluation_config/$defs/automated/$defs/dataset_metric_config/$defs/dataset": close({
		dataset_location?: matchN(1, [_#defs."/$defs/evaluation_config/$defs/automated/$defs/dataset_metric_config/$defs/dataset/$defs/dataset_location", [..._#defs."/$defs/evaluation_config/$defs/automated/$defs/dataset_metric_config/$defs/dataset/$defs/dataset_location"]])
		name!: string
	})

	_#defs: "/$defs/evaluation_config/$defs/automated/$defs/dataset_metric_config/$defs/dataset/$defs/dataset_location": close({
		s3_uri!: string
	})

	_#defs: "/$defs/evaluation_config/$defs/automated/$defs/evaluator_model_config": close({
		bedrock_evaluator_model?: matchN(1, [_#defs."/$defs/evaluation_config/$defs/automated/$defs/evaluator_model_config/$defs/bedrock_evaluator_model", [..._#defs."/$defs/evaluation_config/$defs/automated/$defs/evaluator_model_config/$defs/bedrock_evaluator_model"]])
	})

	_#defs: "/$defs/evaluation_config/$defs/automated/$defs/evaluator_model_config/$defs/bedrock_evaluator_model": close({
		model_identifier!: string
	})

	_#defs: "/$defs/evaluation_config/$defs/human": close({
		custom_metric?: matchN(1, [_#defs."/$defs/evaluation_config/$defs/human/$defs/custom_metric", [..._#defs."/$defs/evaluation_config/$defs/human/$defs/custom_metric"]])
		dataset_metric_config?: matchN(1, [_#defs."/$defs/evaluation_config/$defs/human/$defs/dataset_metric_config", [..._#defs."/$defs/evaluation_config/$defs/human/$defs/dataset_metric_config"]])
		human_workflow_config?: matchN(1, [_#defs."/$defs/evaluation_config/$defs/human/$defs/human_workflow_config", [..._#defs."/$defs/evaluation_config/$defs/human/$defs/human_workflow_config"]])
	})

	_#defs: "/$defs/evaluation_config/$defs/human/$defs/custom_metric": close({
		description?:   string
		name!:          string
		rating_method!: string
	})

	_#defs: "/$defs/evaluation_config/$defs/human/$defs/dataset_metric_config": close({
		dataset?: matchN(1, [_#defs."/$defs/evaluation_config/$defs/human/$defs/dataset_metric_config/$defs/dataset", [..._#defs."/$defs/evaluation_config/$defs/human/$defs/dataset_metric_config/$defs/dataset"]])
		metric_names!: [...string]
		task_type!: string
	})

	_#defs: "/$defs/evaluation_config/$defs/human/$defs/dataset_metric_config/$defs/dataset": close({
		dataset_location?: matchN(1, [_#defs."/$defs/evaluation_config/$defs/human/$defs/dataset_metric_config/$defs/dataset/$defs/dataset_location", [..._#defs."/$defs/evaluation_config/$defs/human/$defs/dataset_metric_config/$defs/dataset/$defs/dataset_location"]])
		name!: string
	})

	_#defs: "/$defs/evaluation_config/$defs/human/$defs/dataset_metric_config/$defs/dataset/$defs/dataset_location": close({
		s3_uri!: string
	})

	_#defs: "/$defs/evaluation_config/$defs/human/$defs/human_workflow_config": close({
		flow_definition_arn!: string
		instructions?:        string
	})

	_#defs: "/$defs/inference_config/$defs/model": close({
		bedrock_model?: matchN(1, [_#defs."/$defs/inference_config/$defs/model/$defs/bedrock_model", [..._#defs."/$defs/inference_config/$defs/model/$defs/bedrock_model"]])
		precomputed_inference_source?: matchN(1, [_#defs."/$defs/inference_config/$defs/model/$defs/precomputed_inference_source", [..._#defs."/$defs/inference_config/$defs/model/$defs/precomputed_inference_source"]])
	})

	_#defs: "/$defs/inference_config/$defs/model/$defs/bedrock_model": close({
		performance_config?: matchN(1, [_#defs."/$defs/inference_config/$defs/model/$defs/bedrock_model/$defs/performance_config", [..._#defs."/$defs/inference_config/$defs/model/$defs/bedrock_model/$defs/performance_config"]])
		inference_params?: string
		model_identifier!: string
	})

	_#defs: "/$defs/inference_config/$defs/model/$defs/bedrock_model/$defs/performance_config": close({
		latency?: string
	})

	_#defs: "/$defs/inference_config/$defs/model/$defs/precomputed_inference_source": close({
		inference_source_identifier!: string
	})

	_#defs: "/$defs/inference_config/$defs/rag_config": close({
		knowledge_base_config?: matchN(1, [_#defs."/$defs/inference_config/$defs/rag_config/$defs/knowledge_base_config", [..._#defs."/$defs/inference_config/$defs/rag_config/$defs/knowledge_base_config"]])
		precomputed_rag_source_config?: matchN(1, [_#defs."/$defs/inference_config/$defs/rag_config/$defs/precomputed_rag_source_config", [..._#defs."/$defs/inference_config/$defs/rag_config/$defs/precomputed_rag_source_config"]])
	})

	_#defs: "/$defs/inference_config/$defs/rag_config/$defs/knowledge_base_config": close({
		retrieve_and_generate_config?: matchN(1, [_#defs."/$defs/inference_config/$defs/rag_config/$defs/knowledge_base_config/$defs/retrieve_and_generate_config", [..._#defs."/$defs/inference_config/$defs/rag_config/$defs/knowledge_base_config/$defs/retrieve_and_generate_config"]])
		retrieve_config?: matchN(1, [_#defs."/$defs/inference_config/$defs/rag_config/$defs/knowledge_base_config/$defs/retrieve_config", [..._#defs."/$defs/inference_config/$defs/rag_config/$defs/knowledge_base_config/$defs/retrieve_config"]])
	})

	_#defs: "/$defs/inference_config/$defs/rag_config/$defs/knowledge_base_config/$defs/retrieve_and_generate_config": close({
		retrieval_configuration?: matchN(1, [_#defs."/$defs/inference_config/$defs/rag_config/$defs/knowledge_base_config/$defs/retrieve_and_generate_config/$defs/retrieval_configuration", [..._#defs."/$defs/inference_config/$defs/rag_config/$defs/knowledge_base_config/$defs/retrieve_and_generate_config/$defs/retrieval_configuration"]])
		knowledge_base_id!: string
		model_arn!:         string
	})

	_#defs: "/$defs/inference_config/$defs/rag_config/$defs/knowledge_base_config/$defs/retrieve_and_generate_config/$defs/retrieval_configuration": close({
		vector_search_configuration?: matchN(1, [_#defs."/$defs/inference_config/$defs/rag_config/$defs/knowledge_base_config/$defs/retrieve_and_generate_config/$defs/retrieval_configuration/$defs/vector_search_configuration", [..._#defs."/$defs/inference_config/$defs/rag_config/$defs/knowledge_base_config/$defs/retrieve_and_generate_config/$defs/retrieval_configuration/$defs/vector_search_configuration"]])
	})

	_#defs: "/$defs/inference_config/$defs/rag_config/$defs/knowledge_base_config/$defs/retrieve_and_generate_config/$defs/retrieval_configuration/$defs/vector_search_configuration": close({
		number_of_results?: number
	})

	_#defs: "/$defs/inference_config/$defs/rag_config/$defs/knowledge_base_config/$defs/retrieve_config": close({
		knowledge_base_retrieval_configuration?: matchN(1, [_#defs."/$defs/inference_config/$defs/rag_config/$defs/knowledge_base_config/$defs/retrieve_config/$defs/knowledge_base_retrieval_configuration", [..._#defs."/$defs/inference_config/$defs/rag_config/$defs/knowledge_base_config/$defs/retrieve_config/$defs/knowledge_base_retrieval_configuration"]])
		knowledge_base_id!: string
	})

	_#defs: "/$defs/inference_config/$defs/rag_config/$defs/knowledge_base_config/$defs/retrieve_config/$defs/knowledge_base_retrieval_configuration": close({
		vector_search_configuration?: matchN(1, [_#defs."/$defs/inference_config/$defs/rag_config/$defs/knowledge_base_config/$defs/retrieve_config/$defs/knowledge_base_retrieval_configuration/$defs/vector_search_configuration", [..._#defs."/$defs/inference_config/$defs/rag_config/$defs/knowledge_base_config/$defs/retrieve_config/$defs/knowledge_base_retrieval_configuration/$defs/vector_search_configuration"]])
	})

	_#defs: "/$defs/inference_config/$defs/rag_config/$defs/knowledge_base_config/$defs/retrieve_config/$defs/knowledge_base_retrieval_configuration/$defs/vector_search_configuration": close({
		number_of_results?: number
	})

	_#defs: "/$defs/inference_config/$defs/rag_config/$defs/precomputed_rag_source_config": close({
		retrieve_and_generate_source_config?: matchN(1, [_#defs."/$defs/inference_config/$defs/rag_config/$defs/precomputed_rag_source_config/$defs/retrieve_and_generate_source_config", [..._#defs."/$defs/inference_config/$defs/rag_config/$defs/precomputed_rag_source_config/$defs/retrieve_and_generate_source_config"]])
		retrieve_source_config?: matchN(1, [_#defs."/$defs/inference_config/$defs/rag_config/$defs/precomputed_rag_source_config/$defs/retrieve_source_config", [..._#defs."/$defs/inference_config/$defs/rag_config/$defs/precomputed_rag_source_config/$defs/retrieve_source_config"]])
	})

	_#defs: "/$defs/inference_config/$defs/rag_config/$defs/precomputed_rag_source_config/$defs/retrieve_and_generate_source_config": close({
		rag_source_identifier!: string
	})

	_#defs: "/$defs/inference_config/$defs/rag_config/$defs/precomputed_rag_source_config/$defs/retrieve_source_config": close({
		rag_source_identifier!: string
	})
}
