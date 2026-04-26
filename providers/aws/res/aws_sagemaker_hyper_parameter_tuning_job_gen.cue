package res

#aws_sagemaker_hyper_parameter_tuning_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_sagemaker_hyper_parameter_tuning_job")
	close({
		autotune?: matchN(1, [#autotune, [...#autotune]])
		config?: matchN(1, [#config, [...#config]])
		timeouts?: #timeouts
		training_job_definition?: matchN(1, [#training_job_definition, [...#training_job_definition]])
		training_job_definitions?: matchN(1, [#training_job_definitions, [...#training_job_definitions]])
		warm_start_config?: matchN(1, [#warm_start_config, [...#warm_start_config]])
		arn?:            string
		failure_reason?: string
		name!:           string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		status?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#autotune: close({
		mode!: string
	})

	#config: close({
		objective?: matchN(1, [_#defs."/$defs/config/$defs/objective", [..._#defs."/$defs/config/$defs/objective"]])
		parameter_ranges?: matchN(1, [_#defs."/$defs/config/$defs/parameter_ranges", [..._#defs."/$defs/config/$defs/parameter_ranges"]])
		resource_limits?: matchN(1, [_#defs."/$defs/config/$defs/resource_limits", [..._#defs."/$defs/config/$defs/resource_limits"]])
		strategy_config?: matchN(1, [_#defs."/$defs/config/$defs/strategy_config", [..._#defs."/$defs/config/$defs/strategy_config"]])
		tuning_job_completion_criteria?: matchN(1, [_#defs."/$defs/config/$defs/tuning_job_completion_criteria", [..._#defs."/$defs/config/$defs/tuning_job_completion_criteria"]])
		random_seed?:                      number
		strategy!:                         string
		training_job_early_stopping_type?: string
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

	#training_job_definition: close({
		algorithm_specification?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/algorithm_specification", [..._#defs."/$defs/training_job_definition/$defs/algorithm_specification"]])
		checkpoint_config?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/checkpoint_config", [..._#defs."/$defs/training_job_definition/$defs/checkpoint_config"]])
		hyper_parameter_ranges?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/hyper_parameter_ranges", [..._#defs."/$defs/training_job_definition/$defs/hyper_parameter_ranges"]])
		hyper_parameter_tuning_resource_config?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/hyper_parameter_tuning_resource_config", [..._#defs."/$defs/training_job_definition/$defs/hyper_parameter_tuning_resource_config"]])
		input_data_config?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/input_data_config", [..._#defs."/$defs/training_job_definition/$defs/input_data_config"]])
		output_data_config?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/output_data_config", [..._#defs."/$defs/training_job_definition/$defs/output_data_config"]])
		resource_config?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/resource_config", [..._#defs."/$defs/training_job_definition/$defs/resource_config"]])
		stopping_condition?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/stopping_condition", [..._#defs."/$defs/training_job_definition/$defs/stopping_condition"]])
		tuning_objective?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/tuning_objective", [..._#defs."/$defs/training_job_definition/$defs/tuning_objective"]])
		vpc_config?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/vpc_config", [..._#defs."/$defs/training_job_definition/$defs/vpc_config"]])
		definition_name?:                           string
		enable_inter_container_traffic_encryption?: bool
		enable_managed_spot_training?:              bool
		enable_network_isolation?:                  bool
		environment?: [string]: string
		retry_strategy?: [...close({
			maximum_retry_attempts?: number
		})]
		role_arn!: string
		static_hyper_parameters?: [string]: string
	})

	#training_job_definitions: close({
		algorithm_specification?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/algorithm_specification", [..._#defs."/$defs/training_job_definitions/$defs/algorithm_specification"]])
		checkpoint_config?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/checkpoint_config", [..._#defs."/$defs/training_job_definitions/$defs/checkpoint_config"]])
		hyper_parameter_ranges?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/hyper_parameter_ranges", [..._#defs."/$defs/training_job_definitions/$defs/hyper_parameter_ranges"]])
		hyper_parameter_tuning_resource_config?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/hyper_parameter_tuning_resource_config", [..._#defs."/$defs/training_job_definitions/$defs/hyper_parameter_tuning_resource_config"]])
		input_data_config?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/input_data_config", [..._#defs."/$defs/training_job_definitions/$defs/input_data_config"]])
		output_data_config?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/output_data_config", [..._#defs."/$defs/training_job_definitions/$defs/output_data_config"]])
		resource_config?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/resource_config", [..._#defs."/$defs/training_job_definitions/$defs/resource_config"]])
		stopping_condition?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/stopping_condition", [..._#defs."/$defs/training_job_definitions/$defs/stopping_condition"]])
		tuning_objective?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/tuning_objective", [..._#defs."/$defs/training_job_definitions/$defs/tuning_objective"]])
		vpc_config?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/vpc_config", [..._#defs."/$defs/training_job_definitions/$defs/vpc_config"]])
		definition_name?:                           string
		enable_inter_container_traffic_encryption?: bool
		enable_managed_spot_training?:              bool
		enable_network_isolation?:                  bool
		environment?: [string]: string
		retry_strategy?: [...close({
			maximum_retry_attempts?: number
		})]
		role_arn!: string
		static_hyper_parameters?: [string]: string
	})

	#warm_start_config: close({
		parent_hyper_parameter_tuning_jobs?: matchN(1, [_#defs."/$defs/warm_start_config/$defs/parent_hyper_parameter_tuning_jobs", [..._#defs."/$defs/warm_start_config/$defs/parent_hyper_parameter_tuning_jobs"]])
		warm_start_type?: string
	})

	_#defs: "/$defs/config/$defs/objective": close({
		metric_name!: string
		type!:        string
	})

	_#defs: "/$defs/config/$defs/parameter_ranges": close({
		auto_parameters?: matchN(1, [_#defs."/$defs/config/$defs/parameter_ranges/$defs/auto_parameters", [..._#defs."/$defs/config/$defs/parameter_ranges/$defs/auto_parameters"]])
		categorical_parameter_ranges?: matchN(1, [_#defs."/$defs/config/$defs/parameter_ranges/$defs/categorical_parameter_ranges", [..._#defs."/$defs/config/$defs/parameter_ranges/$defs/categorical_parameter_ranges"]])
		continuous_parameter_ranges?: matchN(1, [_#defs."/$defs/config/$defs/parameter_ranges/$defs/continuous_parameter_ranges", [..._#defs."/$defs/config/$defs/parameter_ranges/$defs/continuous_parameter_ranges"]])
		integer_parameter_ranges?: matchN(1, [_#defs."/$defs/config/$defs/parameter_ranges/$defs/integer_parameter_ranges", [..._#defs."/$defs/config/$defs/parameter_ranges/$defs/integer_parameter_ranges"]])
	})

	_#defs: "/$defs/config/$defs/parameter_ranges/$defs/auto_parameters": close({
		name!:       string
		value_hint!: string
	})

	_#defs: "/$defs/config/$defs/parameter_ranges/$defs/categorical_parameter_ranges": close({
		name!: string
		values!: [...string]
	})

	_#defs: "/$defs/config/$defs/parameter_ranges/$defs/continuous_parameter_ranges": close({
		max_value!:    string
		min_value!:    string
		name!:         string
		scaling_type?: string
	})

	_#defs: "/$defs/config/$defs/parameter_ranges/$defs/integer_parameter_ranges": close({
		max_value!:    string
		min_value!:    string
		name!:         string
		scaling_type?: string
	})

	_#defs: "/$defs/config/$defs/resource_limits": close({
		max_number_of_training_jobs?: number
		max_parallel_training_jobs!:  number
		max_runtime_in_seconds?:      number
	})

	_#defs: "/$defs/config/$defs/strategy_config": close({
		hyperband_strategy_config?: matchN(1, [_#defs."/$defs/config/$defs/strategy_config/$defs/hyperband_strategy_config", [..._#defs."/$defs/config/$defs/strategy_config/$defs/hyperband_strategy_config"]])
	})

	_#defs: "/$defs/config/$defs/strategy_config/$defs/hyperband_strategy_config": close({
		max_resource?: number
		min_resource?: number
	})

	_#defs: "/$defs/config/$defs/tuning_job_completion_criteria": close({
		best_objective_not_improving?: matchN(1, [_#defs."/$defs/config/$defs/tuning_job_completion_criteria/$defs/best_objective_not_improving", [..._#defs."/$defs/config/$defs/tuning_job_completion_criteria/$defs/best_objective_not_improving"]])
		convergence_detected?: matchN(1, [_#defs."/$defs/config/$defs/tuning_job_completion_criteria/$defs/convergence_detected", [..._#defs."/$defs/config/$defs/tuning_job_completion_criteria/$defs/convergence_detected"]])
		target_objective_metric_value?: number
	})

	_#defs: "/$defs/config/$defs/tuning_job_completion_criteria/$defs/best_objective_not_improving": close({
		max_number_of_training_jobs_not_improving?: number
	})

	_#defs: "/$defs/config/$defs/tuning_job_completion_criteria/$defs/convergence_detected": close({
		complete_on_convergence?: string
	})

	_#defs: "/$defs/training_job_definition/$defs/algorithm_specification": close({
		metric_definitions?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/algorithm_specification/$defs/metric_definitions", [..._#defs."/$defs/training_job_definition/$defs/algorithm_specification/$defs/metric_definitions"]])
		algorithm_name?:      string
		training_image?:      string
		training_input_mode!: string
	})

	_#defs: "/$defs/training_job_definition/$defs/algorithm_specification/$defs/metric_definitions": close({
		name!:  string
		regex!: string
	})

	_#defs: "/$defs/training_job_definition/$defs/checkpoint_config": close({
		local_path?: string
		s3_uri!:     string
	})

	_#defs: "/$defs/training_job_definition/$defs/hyper_parameter_ranges": close({
		auto_parameters?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/hyper_parameter_ranges/$defs/auto_parameters", [..._#defs."/$defs/training_job_definition/$defs/hyper_parameter_ranges/$defs/auto_parameters"]])
		categorical_parameter_ranges?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/hyper_parameter_ranges/$defs/categorical_parameter_ranges", [..._#defs."/$defs/training_job_definition/$defs/hyper_parameter_ranges/$defs/categorical_parameter_ranges"]])
		continuous_parameter_ranges?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/hyper_parameter_ranges/$defs/continuous_parameter_ranges", [..._#defs."/$defs/training_job_definition/$defs/hyper_parameter_ranges/$defs/continuous_parameter_ranges"]])
		integer_parameter_ranges?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/hyper_parameter_ranges/$defs/integer_parameter_ranges", [..._#defs."/$defs/training_job_definition/$defs/hyper_parameter_ranges/$defs/integer_parameter_ranges"]])
	})

	_#defs: "/$defs/training_job_definition/$defs/hyper_parameter_ranges/$defs/auto_parameters": close({
		name!:       string
		value_hint!: string
	})

	_#defs: "/$defs/training_job_definition/$defs/hyper_parameter_ranges/$defs/categorical_parameter_ranges": close({
		name!: string
		values!: [...string]
	})

	_#defs: "/$defs/training_job_definition/$defs/hyper_parameter_ranges/$defs/continuous_parameter_ranges": close({
		max_value!:    string
		min_value!:    string
		name!:         string
		scaling_type?: string
	})

	_#defs: "/$defs/training_job_definition/$defs/hyper_parameter_ranges/$defs/integer_parameter_ranges": close({
		max_value!:    string
		min_value!:    string
		name!:         string
		scaling_type?: string
	})

	_#defs: "/$defs/training_job_definition/$defs/hyper_parameter_tuning_resource_config": close({
		instance_configs?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/hyper_parameter_tuning_resource_config/$defs/instance_configs", [..._#defs."/$defs/training_job_definition/$defs/hyper_parameter_tuning_resource_config/$defs/instance_configs"]])
		allocation_strategy?: string
		instance_count?:      number
		instance_type?:       string
		volume_kms_key_id?:   string
		volume_size_in_gb?:   number
	})

	_#defs: "/$defs/training_job_definition/$defs/hyper_parameter_tuning_resource_config/$defs/instance_configs": close({
		instance_count?:    number
		instance_type?:     string
		volume_size_in_gb?: number
	})

	_#defs: "/$defs/training_job_definition/$defs/input_data_config": close({
		data_source?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/input_data_config/$defs/data_source", [..._#defs."/$defs/training_job_definition/$defs/input_data_config/$defs/data_source"]])
		shuffle_config?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/input_data_config/$defs/shuffle_config", [..._#defs."/$defs/training_job_definition/$defs/input_data_config/$defs/shuffle_config"]])
		channel_name!:        string
		compression_type?:    string
		content_type?:        string
		input_mode?:          string
		record_wrapper_type?: string
	})

	_#defs: "/$defs/training_job_definition/$defs/input_data_config/$defs/data_source": close({
		file_system_data_source?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/file_system_data_source", [..._#defs."/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/file_system_data_source"]])
		s3_data_source?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/s3_data_source", [..._#defs."/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/s3_data_source"]])
	})

	_#defs: "/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/file_system_data_source": close({
		directory_path!:          string
		file_system_access_mode!: string
		file_system_id!:          string
		file_system_type!:        string
	})

	_#defs: "/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/s3_data_source": close({
		hub_access_config?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/hub_access_config", [..._#defs."/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/hub_access_config"]])
		model_access_config?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/model_access_config", [..._#defs."/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/model_access_config"]])
		attribute_names?: [...string]
		instance_group_names?: [...string]
		s3_data_distribution_type?: string
		s3_data_type!:              string
		s3_uri!:                    string
	})

	_#defs: "/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/hub_access_config": close({
		hub_content_arn!: string
	})

	_#defs: "/$defs/training_job_definition/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/model_access_config": close({
		accept_eula!: bool
	})

	_#defs: "/$defs/training_job_definition/$defs/input_data_config/$defs/shuffle_config": close({
		seed!: number
	})

	_#defs: "/$defs/training_job_definition/$defs/output_data_config": close({
		compression_type?: string
		kms_key_id?:       string
		s3_output_path!:   string
	})

	_#defs: "/$defs/training_job_definition/$defs/resource_config": close({
		instance_groups?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/resource_config/$defs/instance_groups", [..._#defs."/$defs/training_job_definition/$defs/resource_config/$defs/instance_groups"]])
		instance_placement_config?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/resource_config/$defs/instance_placement_config", [..._#defs."/$defs/training_job_definition/$defs/resource_config/$defs/instance_placement_config"]])
		instance_count?:               number
		instance_type?:                string
		keep_alive_period_in_seconds?: number
		training_plan_arn?:            string
		volume_kms_key_id?:            string
		volume_size_in_gb?:            number
	})

	_#defs: "/$defs/training_job_definition/$defs/resource_config/$defs/instance_groups": close({
		instance_count!:      number
		instance_group_name!: string
		instance_type!:       string
	})

	_#defs: "/$defs/training_job_definition/$defs/resource_config/$defs/instance_placement_config": close({
		placement_specifications?: matchN(1, [_#defs."/$defs/training_job_definition/$defs/resource_config/$defs/instance_placement_config/$defs/placement_specifications", [..._#defs."/$defs/training_job_definition/$defs/resource_config/$defs/instance_placement_config/$defs/placement_specifications"]])
		enable_multiple_jobs?: bool
	})

	_#defs: "/$defs/training_job_definition/$defs/resource_config/$defs/instance_placement_config/$defs/placement_specifications": close({
		instance_count!:  number
		ultra_server_id?: string
	})

	_#defs: "/$defs/training_job_definition/$defs/stopping_condition": close({
		max_pending_time_in_seconds?: number
		max_runtime_in_seconds?:      number
		max_wait_time_in_seconds?:    number
	})

	_#defs: "/$defs/training_job_definition/$defs/tuning_objective": close({
		metric_name!: string
		type!:        string
	})

	_#defs: "/$defs/training_job_definition/$defs/vpc_config": close({
		security_group_ids!: [...string]
		subnets!: [...string]
	})

	_#defs: "/$defs/training_job_definitions/$defs/algorithm_specification": close({
		metric_definitions?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/algorithm_specification/$defs/metric_definitions", [..._#defs."/$defs/training_job_definitions/$defs/algorithm_specification/$defs/metric_definitions"]])
		algorithm_name?:      string
		training_image?:      string
		training_input_mode!: string
	})

	_#defs: "/$defs/training_job_definitions/$defs/algorithm_specification/$defs/metric_definitions": close({
		name!:  string
		regex!: string
	})

	_#defs: "/$defs/training_job_definitions/$defs/checkpoint_config": close({
		local_path?: string
		s3_uri!:     string
	})

	_#defs: "/$defs/training_job_definitions/$defs/hyper_parameter_ranges": close({
		auto_parameters?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/hyper_parameter_ranges/$defs/auto_parameters", [..._#defs."/$defs/training_job_definitions/$defs/hyper_parameter_ranges/$defs/auto_parameters"]])
		categorical_parameter_ranges?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/hyper_parameter_ranges/$defs/categorical_parameter_ranges", [..._#defs."/$defs/training_job_definitions/$defs/hyper_parameter_ranges/$defs/categorical_parameter_ranges"]])
		continuous_parameter_ranges?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/hyper_parameter_ranges/$defs/continuous_parameter_ranges", [..._#defs."/$defs/training_job_definitions/$defs/hyper_parameter_ranges/$defs/continuous_parameter_ranges"]])
		integer_parameter_ranges?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/hyper_parameter_ranges/$defs/integer_parameter_ranges", [..._#defs."/$defs/training_job_definitions/$defs/hyper_parameter_ranges/$defs/integer_parameter_ranges"]])
	})

	_#defs: "/$defs/training_job_definitions/$defs/hyper_parameter_ranges/$defs/auto_parameters": close({
		name!:       string
		value_hint!: string
	})

	_#defs: "/$defs/training_job_definitions/$defs/hyper_parameter_ranges/$defs/categorical_parameter_ranges": close({
		name!: string
		values!: [...string]
	})

	_#defs: "/$defs/training_job_definitions/$defs/hyper_parameter_ranges/$defs/continuous_parameter_ranges": close({
		max_value!:    string
		min_value!:    string
		name!:         string
		scaling_type?: string
	})

	_#defs: "/$defs/training_job_definitions/$defs/hyper_parameter_ranges/$defs/integer_parameter_ranges": close({
		max_value!:    string
		min_value!:    string
		name!:         string
		scaling_type?: string
	})

	_#defs: "/$defs/training_job_definitions/$defs/hyper_parameter_tuning_resource_config": close({
		instance_configs?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/hyper_parameter_tuning_resource_config/$defs/instance_configs", [..._#defs."/$defs/training_job_definitions/$defs/hyper_parameter_tuning_resource_config/$defs/instance_configs"]])
		allocation_strategy?: string
		instance_count?:      number
		instance_type?:       string
		volume_kms_key_id?:   string
		volume_size_in_gb?:   number
	})

	_#defs: "/$defs/training_job_definitions/$defs/hyper_parameter_tuning_resource_config/$defs/instance_configs": close({
		instance_count?:    number
		instance_type?:     string
		volume_size_in_gb?: number
	})

	_#defs: "/$defs/training_job_definitions/$defs/input_data_config": close({
		data_source?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/input_data_config/$defs/data_source", [..._#defs."/$defs/training_job_definitions/$defs/input_data_config/$defs/data_source"]])
		shuffle_config?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/input_data_config/$defs/shuffle_config", [..._#defs."/$defs/training_job_definitions/$defs/input_data_config/$defs/shuffle_config"]])
		channel_name!:        string
		compression_type?:    string
		content_type?:        string
		input_mode?:          string
		record_wrapper_type?: string
	})

	_#defs: "/$defs/training_job_definitions/$defs/input_data_config/$defs/data_source": close({
		file_system_data_source?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/input_data_config/$defs/data_source/$defs/file_system_data_source", [..._#defs."/$defs/training_job_definitions/$defs/input_data_config/$defs/data_source/$defs/file_system_data_source"]])
		s3_data_source?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/input_data_config/$defs/data_source/$defs/s3_data_source", [..._#defs."/$defs/training_job_definitions/$defs/input_data_config/$defs/data_source/$defs/s3_data_source"]])
	})

	_#defs: "/$defs/training_job_definitions/$defs/input_data_config/$defs/data_source/$defs/file_system_data_source": close({
		directory_path!:          string
		file_system_access_mode!: string
		file_system_id!:          string
		file_system_type!:        string
	})

	_#defs: "/$defs/training_job_definitions/$defs/input_data_config/$defs/data_source/$defs/s3_data_source": close({
		hub_access_config?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/hub_access_config", [..._#defs."/$defs/training_job_definitions/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/hub_access_config"]])
		model_access_config?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/model_access_config", [..._#defs."/$defs/training_job_definitions/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/model_access_config"]])
		attribute_names?: [...string]
		instance_group_names?: [...string]
		s3_data_distribution_type?: string
		s3_data_type!:              string
		s3_uri!:                    string
	})

	_#defs: "/$defs/training_job_definitions/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/hub_access_config": close({
		hub_content_arn!: string
	})

	_#defs: "/$defs/training_job_definitions/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/model_access_config": close({
		accept_eula!: bool
	})

	_#defs: "/$defs/training_job_definitions/$defs/input_data_config/$defs/shuffle_config": close({
		seed!: number
	})

	_#defs: "/$defs/training_job_definitions/$defs/output_data_config": close({
		compression_type?: string
		kms_key_id?:       string
		s3_output_path!:   string
	})

	_#defs: "/$defs/training_job_definitions/$defs/resource_config": close({
		instance_groups?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/resource_config/$defs/instance_groups", [..._#defs."/$defs/training_job_definitions/$defs/resource_config/$defs/instance_groups"]])
		instance_placement_config?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/resource_config/$defs/instance_placement_config", [..._#defs."/$defs/training_job_definitions/$defs/resource_config/$defs/instance_placement_config"]])
		instance_count?:               number
		instance_type?:                string
		keep_alive_period_in_seconds?: number
		training_plan_arn?:            string
		volume_kms_key_id?:            string
		volume_size_in_gb?:            number
	})

	_#defs: "/$defs/training_job_definitions/$defs/resource_config/$defs/instance_groups": close({
		instance_count!:      number
		instance_group_name!: string
		instance_type!:       string
	})

	_#defs: "/$defs/training_job_definitions/$defs/resource_config/$defs/instance_placement_config": close({
		placement_specifications?: matchN(1, [_#defs."/$defs/training_job_definitions/$defs/resource_config/$defs/instance_placement_config/$defs/placement_specifications", [..._#defs."/$defs/training_job_definitions/$defs/resource_config/$defs/instance_placement_config/$defs/placement_specifications"]])
		enable_multiple_jobs?: bool
	})

	_#defs: "/$defs/training_job_definitions/$defs/resource_config/$defs/instance_placement_config/$defs/placement_specifications": close({
		instance_count!:  number
		ultra_server_id?: string
	})

	_#defs: "/$defs/training_job_definitions/$defs/stopping_condition": close({
		max_pending_time_in_seconds?: number
		max_runtime_in_seconds?:      number
		max_wait_time_in_seconds?:    number
	})

	_#defs: "/$defs/training_job_definitions/$defs/tuning_objective": close({
		metric_name!: string
		type!:        string
	})

	_#defs: "/$defs/training_job_definitions/$defs/vpc_config": close({
		security_group_ids!: [...string]
		subnets!: [...string]
	})

	_#defs: "/$defs/warm_start_config/$defs/parent_hyper_parameter_tuning_jobs": close({
		name!: string
	})
}
