package res

aws_sagemaker_inference_component: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_sagemaker_inference_component")
	close({
		deployment_config?: matchN(1, [#deployment_config, [...#deployment_config]])
		runtime_config?: matchN(1, [#runtime_config, [...#runtime_config]])
		specification?: matchN(1, [#specification, [...#specification]])
		specifications?: matchN(1, [#specifications, [...#specifications]])
		timeouts?: #timeouts
		arn?:      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		creation_time?:      string
		endpoint_arn?:       string
		endpoint_name!:      string
		failure_reason?:     string
		last_modified_time?: string
		name!:               string
		status?:             string
		tags?: [string]:     string
		tags_all?: [string]: string
		variant_name?: string
	})

	#deployment_config: close({
		auto_rollback_configuration?: matchN(1, [_#defs."/$defs/deployment_config/$defs/auto_rollback_configuration", [..._#defs."/$defs/deployment_config/$defs/auto_rollback_configuration"]])
		rolling_update_policy?: matchN(1, [_#defs."/$defs/deployment_config/$defs/rolling_update_policy", [..._#defs."/$defs/deployment_config/$defs/rolling_update_policy"]])
	})

	#runtime_config: close({
		copy_count!:         number
		current_copy_count?: number
		desired_copy_count?: number
		placement_status?: [...close({
			current_copy_count?: number
			instance_type?:      string
		})]
	})

	#specification: close({
		compute_resource_requirements?: matchN(1, [_#defs."/$defs/specification/$defs/compute_resource_requirements", [..._#defs."/$defs/specification/$defs/compute_resource_requirements"]])
		container?: matchN(1, [_#defs."/$defs/specification/$defs/container", [..._#defs."/$defs/specification/$defs/container"]])
		data_cache_config?: matchN(1, [_#defs."/$defs/specification/$defs/data_cache_config", [..._#defs."/$defs/specification/$defs/data_cache_config"]])
		scheduling_config?: matchN(1, [_#defs."/$defs/specification/$defs/scheduling_config", [..._#defs."/$defs/specification/$defs/scheduling_config"]])
		startup_parameters?: matchN(1, [_#defs."/$defs/specification/$defs/startup_parameters", [..._#defs."/$defs/specification/$defs/startup_parameters"]])
		base_inference_component_name?: string
		instance_type?:                 string
		model_name?:                    string
	})

	#specifications: close({
		compute_resource_requirements?: matchN(1, [_#defs."/$defs/specifications/$defs/compute_resource_requirements", [..._#defs."/$defs/specifications/$defs/compute_resource_requirements"]])
		container?: matchN(1, [_#defs."/$defs/specifications/$defs/container", [..._#defs."/$defs/specifications/$defs/container"]])
		data_cache_config?: matchN(1, [_#defs."/$defs/specifications/$defs/data_cache_config", [..._#defs."/$defs/specifications/$defs/data_cache_config"]])
		scheduling_config?: matchN(1, [_#defs."/$defs/specifications/$defs/scheduling_config", [..._#defs."/$defs/specifications/$defs/scheduling_config"]])
		startup_parameters?: matchN(1, [_#defs."/$defs/specifications/$defs/startup_parameters", [..._#defs."/$defs/specifications/$defs/startup_parameters"]])
		base_inference_component_name?: string
		instance_type?:                 string
		model_name?:                    string
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

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		update?: string
	})

	_#defs: "/$defs/deployment_config/$defs/auto_rollback_configuration": close({
		alarms?: matchN(1, [_#defs."/$defs/deployment_config/$defs/auto_rollback_configuration/$defs/alarms", [..._#defs."/$defs/deployment_config/$defs/auto_rollback_configuration/$defs/alarms"]])
	})

	_#defs: "/$defs/deployment_config/$defs/auto_rollback_configuration/$defs/alarms": close({
		alarm_name!: string
	})

	_#defs: "/$defs/deployment_config/$defs/rolling_update_policy": close({
		maximum_batch_size?: matchN(1, [_#defs."/$defs/deployment_config/$defs/rolling_update_policy/$defs/maximum_batch_size", [..._#defs."/$defs/deployment_config/$defs/rolling_update_policy/$defs/maximum_batch_size"]])
		rollback_maximum_batch_size?: matchN(1, [_#defs."/$defs/deployment_config/$defs/rolling_update_policy/$defs/rollback_maximum_batch_size", [..._#defs."/$defs/deployment_config/$defs/rolling_update_policy/$defs/rollback_maximum_batch_size"]])
		maximum_execution_timeout_in_seconds?: number
		wait_interval_in_seconds!:             number
	})

	_#defs: "/$defs/deployment_config/$defs/rolling_update_policy/$defs/maximum_batch_size": close({
		type!:  string
		value!: number
	})

	_#defs: "/$defs/deployment_config/$defs/rolling_update_policy/$defs/rollback_maximum_batch_size": close({
		type!:  string
		value!: number
	})

	_#defs: "/$defs/specification/$defs/compute_resource_requirements": close({
		max_memory_required_in_mb?:              number
		min_memory_required_in_mb!:              number
		number_of_accelerator_devices_required?: number
		number_of_cpu_cores_required?:           number
	})

	_#defs: "/$defs/specification/$defs/container": close({
		container_metrics_config?: matchN(1, [_#defs."/$defs/specification/$defs/container/$defs/container_metrics_config", [..._#defs."/$defs/specification/$defs/container/$defs/container_metrics_config"]])
		artifact_url?: string
		environment?: [string]: string
		image?:          string
		resolved_image?: string
	})

	_#defs: "/$defs/specification/$defs/container/$defs/container_metrics_config": close({
		metrics_endpoint?: matchN(1, [_#defs."/$defs/specification/$defs/container/$defs/container_metrics_config/$defs/metrics_endpoint", [..._#defs."/$defs/specification/$defs/container/$defs/container_metrics_config/$defs/metrics_endpoint"]])
	})

	_#defs: "/$defs/specification/$defs/container/$defs/container_metrics_config/$defs/metrics_endpoint": close({
		metric_publish_frequency_in_seconds?: number
		metrics_endpoint_path!:               string
	})

	_#defs: "/$defs/specification/$defs/data_cache_config": close({
		enable_caching!: bool
	})

	_#defs: "/$defs/specification/$defs/scheduling_config": close({
		availability_zone_balance?: matchN(1, [_#defs."/$defs/specification/$defs/scheduling_config/$defs/availability_zone_balance", [..._#defs."/$defs/specification/$defs/scheduling_config/$defs/availability_zone_balance"]])
		placement_strategy!: string
	})

	_#defs: "/$defs/specification/$defs/scheduling_config/$defs/availability_zone_balance": close({
		enforcement_mode!: string
		max_imbalance?:    number
	})

	_#defs: "/$defs/specification/$defs/startup_parameters": close({
		container_startup_health_check_timeout_in_seconds?: number
		model_data_download_timeout_in_seconds?:            number
	})

	_#defs: "/$defs/specifications/$defs/compute_resource_requirements": close({
		max_memory_required_in_mb?:              number
		min_memory_required_in_mb!:              number
		number_of_accelerator_devices_required?: number
		number_of_cpu_cores_required?:           number
	})

	_#defs: "/$defs/specifications/$defs/container": close({
		container_metrics_config?: matchN(1, [_#defs."/$defs/specifications/$defs/container/$defs/container_metrics_config", [..._#defs."/$defs/specifications/$defs/container/$defs/container_metrics_config"]])
		artifact_url?: string
		environment?: [string]: string
		image?:          string
		resolved_image?: string
	})

	_#defs: "/$defs/specifications/$defs/container/$defs/container_metrics_config": close({
		metrics_endpoint?: matchN(1, [_#defs."/$defs/specifications/$defs/container/$defs/container_metrics_config/$defs/metrics_endpoint", [..._#defs."/$defs/specifications/$defs/container/$defs/container_metrics_config/$defs/metrics_endpoint"]])
	})

	_#defs: "/$defs/specifications/$defs/container/$defs/container_metrics_config/$defs/metrics_endpoint": close({
		metric_publish_frequency_in_seconds?: number
		metrics_endpoint_path!:               string
	})

	_#defs: "/$defs/specifications/$defs/data_cache_config": close({
		enable_caching!: bool
	})

	_#defs: "/$defs/specifications/$defs/scheduling_config": close({
		availability_zone_balance?: matchN(1, [_#defs."/$defs/specifications/$defs/scheduling_config/$defs/availability_zone_balance", [..._#defs."/$defs/specifications/$defs/scheduling_config/$defs/availability_zone_balance"]])
		placement_strategy!: string
	})

	_#defs: "/$defs/specifications/$defs/scheduling_config/$defs/availability_zone_balance": close({
		enforcement_mode!: string
		max_imbalance?:    number
	})

	_#defs: "/$defs/specifications/$defs/startup_parameters": close({
		container_startup_health_check_timeout_in_seconds?: number
		model_data_download_timeout_in_seconds?:            number
	})
}
