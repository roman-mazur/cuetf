package res

#aws_sagemaker_algorithm: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_sagemaker_algorithm")
	close({
		inference_specification?: matchN(1, [#inference_specification, [...#inference_specification]])
		timeouts?: #timeouts
		training_specification?: matchN(1, [#training_specification, [...#training_specification]])
		validation_specification?: matchN(1, [#validation_specification, [...#validation_specification]])
		algorithm_description?:   string
		algorithm_name!:          string
		algorithm_status?:        string
		arn?:                     string
		certify_for_marketplace?: bool
		creation_time?:           string
		product_id?:              string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#inference_specification: close({
		containers?: matchN(1, [_#defs."/$defs/inference_specification/$defs/containers", [..._#defs."/$defs/inference_specification/$defs/containers"]])
		supported_content_types?: [...string]
		supported_realtime_inference_instance_types?: [...string]
		supported_response_mime_types?: [...string]
		supported_transform_instance_types?: [...string]
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string
	})

	#training_specification: close({
		additional_s3_data_source?: matchN(1, [_#defs."/$defs/training_specification/$defs/additional_s3_data_source", [..._#defs."/$defs/training_specification/$defs/additional_s3_data_source"]])
		metric_definitions?: matchN(1, [_#defs."/$defs/training_specification/$defs/metric_definitions", [..._#defs."/$defs/training_specification/$defs/metric_definitions"]])
		supported_hyper_parameters?: matchN(1, [_#defs."/$defs/training_specification/$defs/supported_hyper_parameters", [..._#defs."/$defs/training_specification/$defs/supported_hyper_parameters"]])
		supported_tuning_job_objective_metrics?: matchN(1, [_#defs."/$defs/training_specification/$defs/supported_tuning_job_objective_metrics", [..._#defs."/$defs/training_specification/$defs/supported_tuning_job_objective_metrics"]])
		training_channels?: matchN(1, [_#defs."/$defs/training_specification/$defs/training_channels", [..._#defs."/$defs/training_specification/$defs/training_channels"]])
		supported_training_instance_types!: [...string]
		supports_distributed_training?: bool
		training_image!:                string
		training_image_digest?:         string
	})

	#validation_specification: close({
		validation_profiles?: matchN(1, [_#defs."/$defs/validation_specification/$defs/validation_profiles", [..._#defs."/$defs/validation_specification/$defs/validation_profiles"]])
		validation_role!: string
	})

	_#defs: "/$defs/inference_specification/$defs/containers": close({
		additional_s3_data_source?: matchN(1, [_#defs."/$defs/inference_specification/$defs/containers/$defs/additional_s3_data_source", [..._#defs."/$defs/inference_specification/$defs/containers/$defs/additional_s3_data_source"]])
		base_model?: matchN(1, [_#defs."/$defs/inference_specification/$defs/containers/$defs/base_model", [..._#defs."/$defs/inference_specification/$defs/containers/$defs/base_model"]])
		model_data_source?: matchN(1, [_#defs."/$defs/inference_specification/$defs/containers/$defs/model_data_source", [..._#defs."/$defs/inference_specification/$defs/containers/$defs/model_data_source"]])
		model_input?: matchN(1, [_#defs."/$defs/inference_specification/$defs/containers/$defs/model_input", [..._#defs."/$defs/inference_specification/$defs/containers/$defs/model_input"]])
		container_hostname?: string
		environment?: [string]: string
		framework?:          string
		framework_version?:  string
		image?:              string
		image_digest?:       string
		is_checkpoint?:      bool
		model_data_etag?:    string
		model_data_url?:     string
		nearest_model_name?: string
		product_id?:         string
	})

	_#defs: "/$defs/inference_specification/$defs/containers/$defs/additional_s3_data_source": close({
		compression_type?: string
		etag?:             string
		s3_data_type!:     string
		s3_uri!:           string
	})

	_#defs: "/$defs/inference_specification/$defs/containers/$defs/base_model": close({
		hub_content_name?:    string
		hub_content_version?: string
		recipe_name?:         string
	})

	_#defs: "/$defs/inference_specification/$defs/containers/$defs/model_data_source": close({
		s3_data_source?: matchN(1, [_#defs."/$defs/inference_specification/$defs/containers/$defs/model_data_source/$defs/s3_data_source", [..._#defs."/$defs/inference_specification/$defs/containers/$defs/model_data_source/$defs/s3_data_source"]])
	})

	_#defs: "/$defs/inference_specification/$defs/containers/$defs/model_data_source/$defs/s3_data_source": close({
		hub_access_config?: matchN(1, [_#defs."/$defs/inference_specification/$defs/containers/$defs/model_data_source/$defs/s3_data_source/$defs/hub_access_config", [..._#defs."/$defs/inference_specification/$defs/containers/$defs/model_data_source/$defs/s3_data_source/$defs/hub_access_config"]])
		model_access_config?: matchN(1, [_#defs."/$defs/inference_specification/$defs/containers/$defs/model_data_source/$defs/s3_data_source/$defs/model_access_config", [..._#defs."/$defs/inference_specification/$defs/containers/$defs/model_data_source/$defs/s3_data_source/$defs/model_access_config"]])
		compression_type!: string
		etag?:             string
		manifest_etag?:    string
		manifest_s3_uri?:  string
		s3_data_type!:     string
		s3_uri!:           string
	})

	_#defs: "/$defs/inference_specification/$defs/containers/$defs/model_data_source/$defs/s3_data_source/$defs/hub_access_config": close({
		hub_content_arn?: string
	})

	_#defs: "/$defs/inference_specification/$defs/containers/$defs/model_data_source/$defs/s3_data_source/$defs/model_access_config": close({
		accept_eula?: bool
	})

	_#defs: "/$defs/inference_specification/$defs/containers/$defs/model_input": close({
		data_input_config?: string
	})

	_#defs: "/$defs/training_specification/$defs/additional_s3_data_source": close({
		compression_type?: string
		etag?:             string
		s3_data_type!:     string
		s3_uri!:           string
	})

	_#defs: "/$defs/training_specification/$defs/metric_definitions": close({
		name!:  string
		regex!: string
	})

	_#defs: "/$defs/training_specification/$defs/supported_hyper_parameters": close({
		range?: matchN(1, [_#defs."/$defs/training_specification/$defs/supported_hyper_parameters/$defs/range", [..._#defs."/$defs/training_specification/$defs/supported_hyper_parameters/$defs/range"]])
		default_value?: string
		description?:   string
		is_required?:   bool
		is_tunable?:    bool
		name!:          string
		type!:          string
	})

	_#defs: "/$defs/training_specification/$defs/supported_hyper_parameters/$defs/range": close({
		categorical_parameter_range_specification?: matchN(1, [_#defs."/$defs/training_specification/$defs/supported_hyper_parameters/$defs/range/$defs/categorical_parameter_range_specification", [..._#defs."/$defs/training_specification/$defs/supported_hyper_parameters/$defs/range/$defs/categorical_parameter_range_specification"]])
		continuous_parameter_range_specification?: matchN(1, [_#defs."/$defs/training_specification/$defs/supported_hyper_parameters/$defs/range/$defs/continuous_parameter_range_specification", [..._#defs."/$defs/training_specification/$defs/supported_hyper_parameters/$defs/range/$defs/continuous_parameter_range_specification"]])
		integer_parameter_range_specification?: matchN(1, [_#defs."/$defs/training_specification/$defs/supported_hyper_parameters/$defs/range/$defs/integer_parameter_range_specification", [..._#defs."/$defs/training_specification/$defs/supported_hyper_parameters/$defs/range/$defs/integer_parameter_range_specification"]])
	})

	_#defs: "/$defs/training_specification/$defs/supported_hyper_parameters/$defs/range/$defs/categorical_parameter_range_specification": close({
		values!: [...string]
	})

	_#defs: "/$defs/training_specification/$defs/supported_hyper_parameters/$defs/range/$defs/continuous_parameter_range_specification": close({
		max_value!: string
		min_value!: string
	})

	_#defs: "/$defs/training_specification/$defs/supported_hyper_parameters/$defs/range/$defs/integer_parameter_range_specification": close({
		max_value!: string
		min_value!: string
	})

	_#defs: "/$defs/training_specification/$defs/supported_tuning_job_objective_metrics": close({
		metric_name!: string
		type!:        string
	})

	_#defs: "/$defs/training_specification/$defs/training_channels": close({
		description?: string
		is_required?: bool
		name!:        string
		supported_compression_types?: [...string]
		supported_content_types!: [...string]
		supported_input_modes!: [...string]
	})

	_#defs: "/$defs/validation_specification/$defs/validation_profiles": close({
		training_job_definition?: matchN(1, [_#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition", [..._#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition"]])
		transform_job_definition?: matchN(1, [_#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/transform_job_definition", [..._#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/transform_job_definition"]])
		profile_name!: string
	})

	_#defs: "/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition": close({
		input_data_config?: matchN(1, [_#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/input_data_config", [..._#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/input_data_config"]])
		output_data_config?: matchN(1, [_#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/output_data_config", [..._#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/output_data_config"]])
		resource_config?: matchN(1, [_#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/resource_config", [..._#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/resource_config"]])
		stopping_condition?: matchN(1, [_#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/stopping_condition", [..._#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/stopping_condition"]])
		hyper_parameters?: [string]: string
		training_input_mode!: string
	})

	_#defs: "/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/input_data_config": close({
		data_source?: matchN(1, [_#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/input_data_config/$defs/data_source", [..._#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/input_data_config/$defs/data_source"]])
		shuffle_config?: matchN(1, [_#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/input_data_config/$defs/shuffle_config", [..._#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/input_data_config/$defs/shuffle_config"]])
		channel_name!:        string
		compression_type?:    string
		content_type?:        string
		input_mode?:          string
		record_wrapper_type?: string
	})

	_#defs: "/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/input_data_config/$defs/data_source": close({
		file_system_data_source?: matchN(1, [_#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/file_system_data_source", [..._#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/file_system_data_source"]])
		s3_data_source?: matchN(1, [_#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/s3_data_source", [..._#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/s3_data_source"]])
	})

	_#defs: "/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/file_system_data_source": close({
		directory_path!:          string
		file_system_access_mode!: string
		file_system_id!:          string
		file_system_type!:        string
	})

	_#defs: "/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/s3_data_source": close({
		hub_access_config?: matchN(1, [_#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/hub_access_config", [..._#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/hub_access_config"]])
		model_access_config?: matchN(1, [_#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/model_access_config", [..._#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/model_access_config"]])
		attribute_names?: [...string]
		instance_group_names?: [...string]
		s3_data_distribution_type?: string
		s3_data_type!:              string
		s3_uri!:                    string
	})

	_#defs: "/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/hub_access_config": close({
		hub_content_arn?: string
	})

	_#defs: "/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/model_access_config": close({
		accept_eula?: bool
	})

	_#defs: "/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/input_data_config/$defs/shuffle_config": close({
		seed!: number
	})

	_#defs: "/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/output_data_config": close({
		compression_type?: string
		kms_key_id?:       string
		s3_output_path!:   string
	})

	_#defs: "/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/resource_config": close({
		instance_groups?: matchN(1, [_#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/resource_config/$defs/instance_groups", [..._#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/resource_config/$defs/instance_groups"]])
		instance_placement_config?: matchN(1, [_#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/resource_config/$defs/instance_placement_config", [..._#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/resource_config/$defs/instance_placement_config"]])
		instance_count?:               number
		instance_type?:                string
		keep_alive_period_in_seconds?: number
		training_plan_arn?:            string
		volume_kms_key_id?:            string
		volume_size_in_gb?:            number
	})

	_#defs: "/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/resource_config/$defs/instance_groups": close({
		instance_count!:      number
		instance_group_name!: string
		instance_type!:       string
	})

	_#defs: "/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/resource_config/$defs/instance_placement_config": close({
		placement_specifications?: matchN(1, [_#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/resource_config/$defs/instance_placement_config/$defs/placement_specifications", [..._#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/resource_config/$defs/instance_placement_config/$defs/placement_specifications"]])
		enable_multiple_jobs?: bool
	})

	_#defs: "/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/resource_config/$defs/instance_placement_config/$defs/placement_specifications": close({
		instance_count!:  number
		ultra_server_id?: string
	})

	_#defs: "/$defs/validation_specification/$defs/validation_profiles/$defs/training_job_definition/$defs/stopping_condition": close({
		max_pending_time_in_seconds?: number
		max_runtime_in_seconds?:      number
		max_wait_time_in_seconds?:    number
	})

	_#defs: "/$defs/validation_specification/$defs/validation_profiles/$defs/transform_job_definition": close({
		transform_input?: matchN(1, [_#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/transform_job_definition/$defs/transform_input", [..._#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/transform_job_definition/$defs/transform_input"]])
		transform_output?: matchN(1, [_#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/transform_job_definition/$defs/transform_output", [..._#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/transform_job_definition/$defs/transform_output"]])
		transform_resources?: matchN(1, [_#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/transform_job_definition/$defs/transform_resources", [..._#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/transform_job_definition/$defs/transform_resources"]])
		batch_strategy?: string
		environment?: [string]: string
		max_concurrent_transforms?: number
		max_payload_in_mb?:         number
	})

	_#defs: "/$defs/validation_specification/$defs/validation_profiles/$defs/transform_job_definition/$defs/transform_input": close({
		data_source?: matchN(1, [_#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/transform_job_definition/$defs/transform_input/$defs/data_source", [..._#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/transform_job_definition/$defs/transform_input/$defs/data_source"]])
		compression_type?: string
		content_type?:     string
		split_type?:       string
	})

	_#defs: "/$defs/validation_specification/$defs/validation_profiles/$defs/transform_job_definition/$defs/transform_input/$defs/data_source": close({
		s3_data_source?: matchN(1, [_#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/transform_job_definition/$defs/transform_input/$defs/data_source/$defs/s3_data_source", [..._#defs."/$defs/validation_specification/$defs/validation_profiles/$defs/transform_job_definition/$defs/transform_input/$defs/data_source/$defs/s3_data_source"]])
	})

	_#defs: "/$defs/validation_specification/$defs/validation_profiles/$defs/transform_job_definition/$defs/transform_input/$defs/data_source/$defs/s3_data_source": close({
		s3_data_type!: string
		s3_uri!:       string
	})

	_#defs: "/$defs/validation_specification/$defs/validation_profiles/$defs/transform_job_definition/$defs/transform_output": close({
		accept?:         string
		assemble_with?:  string
		kms_key_id?:     string
		s3_output_path!: string
	})

	_#defs: "/$defs/validation_specification/$defs/validation_profiles/$defs/transform_job_definition/$defs/transform_resources": close({
		instance_count!:        number
		instance_type!:         string
		transform_ami_version?: string
		volume_kms_key_id?:     string
	})
}
