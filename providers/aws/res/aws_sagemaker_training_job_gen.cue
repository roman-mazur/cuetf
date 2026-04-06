package res

#aws_sagemaker_training_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_sagemaker_training_job")
	close({
		algorithm_specification?: matchN(1, [#algorithm_specification, [...#algorithm_specification]])
		checkpoint_config?: matchN(1, [#checkpoint_config, [...#checkpoint_config]])
		debug_hook_config?: matchN(1, [#debug_hook_config, [...#debug_hook_config]])
		debug_rule_configurations?: matchN(1, [#debug_rule_configurations, [...#debug_rule_configurations]])
		experiment_config?: matchN(1, [#experiment_config, [...#experiment_config]])
		infra_check_config?: matchN(1, [#infra_check_config, [...#infra_check_config]])
		input_data_config?: matchN(1, [#input_data_config, [...#input_data_config]])
		mlflow_config?: matchN(1, [#mlflow_config, [...#mlflow_config]])
		model_package_config?: matchN(1, [#model_package_config, [...#model_package_config]])
		output_data_config?: matchN(1, [#output_data_config, [...#output_data_config]])
		profiler_config?: matchN(1, [#profiler_config, [...#profiler_config]])
		profiler_rule_configurations?: matchN(1, [#profiler_rule_configurations, [...#profiler_rule_configurations]])
		remote_debug_config?: matchN(1, [#remote_debug_config, [...#remote_debug_config]])
		resource_config?: matchN(1, [#resource_config, [...#resource_config]])
		retry_strategy?: matchN(1, [#retry_strategy, [...#retry_strategy]])
		serverless_job_config?: matchN(1, [#serverless_job_config, [...#serverless_job_config]])
		session_chaining_config?: matchN(1, [#session_chaining_config, [...#session_chaining_config]])
		stopping_condition?: matchN(1, [#stopping_condition, [...#stopping_condition]])
		tensor_board_output_config?: matchN(1, [#tensor_board_output_config, [...#tensor_board_output_config]])
		timeouts?: #timeouts
		vpc_config?: matchN(1, [#vpc_config, [...#vpc_config]])
		arn?: string

		// Whether to delete model packages in the configured model
		// package group when destroying the training job.
		delete_model_packages_on_destroy?: bool

		// Whether to delete detached VPC ENIs that SageMaker may leave
		// behind when destroying the training job.
		delete_vpc_enis_on_destroy?:                bool
		enable_inter_container_traffic_encryption?: bool
		enable_managed_spot_training?:              bool
		enable_network_isolation?:                  bool
		environment?: [string]:      string
		hyper_parameters?: [string]: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		role_arn!: string
		tags?: [string]:     string
		tags_all?: [string]: string
		training_job_name!: string
	})

	#algorithm_specification: close({
		metric_definitions?: matchN(1, [_#defs."/$defs/algorithm_specification/$defs/metric_definitions", [..._#defs."/$defs/algorithm_specification/$defs/metric_definitions"]])
		training_image_config?: matchN(1, [_#defs."/$defs/algorithm_specification/$defs/training_image_config", [..._#defs."/$defs/algorithm_specification/$defs/training_image_config"]])

		// Name or ARN of a SageMaker algorithm resource. Exactly one of
		// `algorithm_name` or `training_image` must be set.
		algorithm_name?: string
		container_arguments?: [...string]
		container_entrypoint?: [...string]

		// Whether SageMaker AI should publish time-series metrics.
		// SageMaker enables this automatically for built-in algorithms,
		// supported prebuilt images, and jobs with explicit
		// `metric_definitions`.
		enable_sagemaker_metrics_time_series?: bool

		// Registry path of the training image. Exactly one of
		// `algorithm_name` or `training_image` must be set. Use
		// `metric_definitions` only when you need to extract custom
		// metrics from your own training container logs.
		training_image?:      string
		training_input_mode?: string
	})

	#checkpoint_config: close({
		local_path?: string
		s3_uri!:     string
	})

	#debug_hook_config: close({
		collection_configurations?: matchN(1, [_#defs."/$defs/debug_hook_config/$defs/collection_configurations", [..._#defs."/$defs/debug_hook_config/$defs/collection_configurations"]])
		hook_parameters?: [string]: string
		local_path?:     string
		s3_output_path!: string
	})

	#debug_rule_configurations: close({
		instance_type?:           string
		local_path?:              string
		rule_configuration_name!: string
		rule_evaluator_image!:    string
		rule_parameters?: [string]: string
		s3_output_path?:    string
		volume_size_in_gb?: number
	})

	#experiment_config: close({
		experiment_name?:              string
		run_name?:                     string
		trial_component_display_name?: string
		trial_name?:                   string
	})

	#infra_check_config: close({
		enable_infra_check?: bool
	})

	#input_data_config: close({
		data_source?: matchN(1, [_#defs."/$defs/input_data_config/$defs/data_source", [..._#defs."/$defs/input_data_config/$defs/data_source"]])
		shuffle_config?: matchN(1, [_#defs."/$defs/input_data_config/$defs/shuffle_config", [..._#defs."/$defs/input_data_config/$defs/shuffle_config"]])
		channel_name!:        string
		compression_type?:    string
		content_type?:        string
		input_mode?:          string
		record_wrapper_type?: string
	})

	#mlflow_config: close({
		mlflow_experiment_name?: string
		mlflow_resource_arn!:    string
		mlflow_run_name?:        string
	})

	#model_package_config: close({
		model_package_group_arn!:  string
		source_model_package_arn?: string
	})

	#output_data_config: close({
		compression_type?: string
		kms_key_id?:       string
		s3_output_path!:   string
	})

	#profiler_config: close({
		disable_profiler?:                   bool
		profiling_interval_in_milliseconds?: number
		profiling_parameters?: [string]: string
		s3_output_path?: string
	})

	#profiler_rule_configurations: close({
		instance_type?:           string
		local_path?:              string
		rule_configuration_name!: string
		rule_evaluator_image!:    string
		rule_parameters?: [string]: string
		s3_output_path?:    string
		volume_size_in_gb?: number
	})

	#remote_debug_config: close({
		enable_remote_debug?: bool
	})

	#resource_config: close({
		instance_groups?: matchN(1, [_#defs."/$defs/resource_config/$defs/instance_groups", [..._#defs."/$defs/resource_config/$defs/instance_groups"]])
		instance_placement_config?: matchN(1, [_#defs."/$defs/resource_config/$defs/instance_placement_config", [..._#defs."/$defs/resource_config/$defs/instance_placement_config"]])
		instance_count?:               number
		instance_type?:                string
		keep_alive_period_in_seconds?: number
		training_plan_arn?:            string
		volume_kms_key_id?:            string
		volume_size_in_gb?:            number
	})

	#retry_strategy: close({
		maximum_retry_attempts!: number
	})

	#serverless_job_config: close({
		accept_eula?: bool

		// Base model ARN in SageMaker Public Hub. SageMaker always
		// selects the latest version of the provided model.
		base_model_arn!:          string
		customization_technique?: string
		evaluation_type?:         string
		evaluator_arn?:           string
		job_type!:                string
		peft?:                    string
	})

	#session_chaining_config: close({
		enable_session_tag_chaining?: bool
	})

	#stopping_condition: close({
		max_pending_time_in_seconds?: number
		max_runtime_in_seconds?:      number
		max_wait_time_in_seconds?:    number
	})

	#tensor_board_output_config: close({
		local_path?:     string
		s3_output_path!: string
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

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})

	#vpc_config: close({
		security_group_ids!: [...string]
		subnets!: [...string]
	})

	_#defs: "/$defs/algorithm_specification/$defs/metric_definitions": close({
		name!:  string
		regex!: string
	})

	_#defs: "/$defs/algorithm_specification/$defs/training_image_config": close({
		training_repository_auth_config?: matchN(1, [_#defs."/$defs/algorithm_specification/$defs/training_image_config/$defs/training_repository_auth_config", [..._#defs."/$defs/algorithm_specification/$defs/training_image_config/$defs/training_repository_auth_config"]])
		training_repository_access_mode?: string
	})

	_#defs: "/$defs/algorithm_specification/$defs/training_image_config/$defs/training_repository_auth_config": close({
		training_repository_credentials_provider_arn?: string
	})

	_#defs: "/$defs/debug_hook_config/$defs/collection_configurations": close({
		collection_name?: string
		collection_parameters?: [string]: string
	})

	_#defs: "/$defs/input_data_config/$defs/data_source": close({
		file_system_data_source?: matchN(1, [_#defs."/$defs/input_data_config/$defs/data_source/$defs/file_system_data_source", [..._#defs."/$defs/input_data_config/$defs/data_source/$defs/file_system_data_source"]])
		s3_data_source?: matchN(1, [_#defs."/$defs/input_data_config/$defs/data_source/$defs/s3_data_source", [..._#defs."/$defs/input_data_config/$defs/data_source/$defs/s3_data_source"]])
	})

	_#defs: "/$defs/input_data_config/$defs/data_source/$defs/file_system_data_source": close({
		directory_path!:          string
		file_system_access_mode!: string
		file_system_id!:          string
		file_system_type!:        string
	})

	_#defs: "/$defs/input_data_config/$defs/data_source/$defs/s3_data_source": close({
		hub_access_config?: matchN(1, [_#defs."/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/hub_access_config", [..._#defs."/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/hub_access_config"]])
		model_access_config?: matchN(1, [_#defs."/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/model_access_config", [..._#defs."/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/model_access_config"]])
		attribute_names?: [...string]
		instance_group_names?: [...string]
		s3_data_distribution_type?: string
		s3_data_type!:              string
		s3_uri!:                    string
	})

	_#defs: "/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/hub_access_config": close({
		hub_content_arn!: string
	})

	_#defs: "/$defs/input_data_config/$defs/data_source/$defs/s3_data_source/$defs/model_access_config": close({
		accept_eula!: bool
	})

	_#defs: "/$defs/input_data_config/$defs/shuffle_config": close({
		seed?: number
	})

	_#defs: "/$defs/resource_config/$defs/instance_groups": close({
		instance_count?:      number
		instance_group_name?: string
		instance_type?:       string
	})

	_#defs: "/$defs/resource_config/$defs/instance_placement_config": close({
		placement_specifications?: matchN(1, [_#defs."/$defs/resource_config/$defs/instance_placement_config/$defs/placement_specifications", [..._#defs."/$defs/resource_config/$defs/instance_placement_config/$defs/placement_specifications"]])
		enable_multiple_jobs?: bool
	})

	_#defs: "/$defs/resource_config/$defs/instance_placement_config/$defs/placement_specifications": close({
		instance_count?:  number
		ultra_server_id?: string
	})
}
