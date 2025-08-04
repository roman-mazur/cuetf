package res

import "list"

#aws_sagemaker_endpoint_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_endpoint_configuration")
	close({
		arn?: string
		async_inference_config?: matchN(1, [#async_inference_config, list.MaxItems(1) & [...#async_inference_config]])
		id?:          string
		kms_key_arn?: string
		name?:        string
		data_capture_config?: matchN(1, [#data_capture_config, list.MaxItems(1) & [...#data_capture_config]])
		name_prefix?: string
		production_variants?: matchN(1, [#production_variants, list.MaxItems(10) & [_, ...] & [...#production_variants]])
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		shadow_production_variants?: matchN(1, [#shadow_production_variants, list.MaxItems(10) & [...#shadow_production_variants]])
	})

	#async_inference_config: close({
		client_config?: matchN(1, [_#defs."/$defs/async_inference_config/$defs/client_config", list.MaxItems(1) & [..._#defs."/$defs/async_inference_config/$defs/client_config"]])
		output_config?: matchN(1, [_#defs."/$defs/async_inference_config/$defs/output_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/async_inference_config/$defs/output_config"]])
	})

	#data_capture_config: close({
		capture_content_type_header?: matchN(1, [_#defs."/$defs/data_capture_config/$defs/capture_content_type_header", list.MaxItems(1) & [..._#defs."/$defs/data_capture_config/$defs/capture_content_type_header"]])
		destination_s3_uri!:          string
		enable_capture?:              bool
		initial_sampling_percentage!: number
		kms_key_id?:                  string
		capture_options?: matchN(1, [_#defs."/$defs/data_capture_config/$defs/capture_options", list.MaxItems(2) & [_, ...] & [..._#defs."/$defs/data_capture_config/$defs/capture_options"]])
	})

	#production_variants: close({
		accelerator_type?:                                  string
		container_startup_health_check_timeout_in_seconds?: number
		enable_ssm_access?:                                 bool
		inference_ami_version?:                             string
		initial_instance_count?:                            number
		initial_variant_weight?:                            number
		instance_type?:                                     string
		model_data_download_timeout_in_seconds?:            number
		core_dump_config?: matchN(1, [_#defs."/$defs/production_variants/$defs/core_dump_config", list.MaxItems(1) & [..._#defs."/$defs/production_variants/$defs/core_dump_config"]])
		model_name!: string
		managed_instance_scaling?: matchN(1, [_#defs."/$defs/production_variants/$defs/managed_instance_scaling", list.MaxItems(1) & [..._#defs."/$defs/production_variants/$defs/managed_instance_scaling"]])
		variant_name?: string
		routing_config?: matchN(1, [_#defs."/$defs/production_variants/$defs/routing_config", [..._#defs."/$defs/production_variants/$defs/routing_config"]])
		serverless_config?: matchN(1, [_#defs."/$defs/production_variants/$defs/serverless_config", list.MaxItems(1) & [..._#defs."/$defs/production_variants/$defs/serverless_config"]])
		volume_size_in_gb?: number
	})

	#shadow_production_variants: close({
		accelerator_type?:                                  string
		container_startup_health_check_timeout_in_seconds?: number
		enable_ssm_access?:                                 bool
		inference_ami_version?:                             string
		initial_instance_count?:                            number
		initial_variant_weight?:                            number
		instance_type?:                                     string
		model_data_download_timeout_in_seconds?:            number
		core_dump_config?: matchN(1, [_#defs."/$defs/shadow_production_variants/$defs/core_dump_config", list.MaxItems(1) & [..._#defs."/$defs/shadow_production_variants/$defs/core_dump_config"]])
		model_name!: string
		managed_instance_scaling?: matchN(1, [_#defs."/$defs/shadow_production_variants/$defs/managed_instance_scaling", list.MaxItems(1) & [..._#defs."/$defs/shadow_production_variants/$defs/managed_instance_scaling"]])
		variant_name?: string
		routing_config?: matchN(1, [_#defs."/$defs/shadow_production_variants/$defs/routing_config", [..._#defs."/$defs/shadow_production_variants/$defs/routing_config"]])
		serverless_config?: matchN(1, [_#defs."/$defs/shadow_production_variants/$defs/serverless_config", list.MaxItems(1) & [..._#defs."/$defs/shadow_production_variants/$defs/serverless_config"]])
		volume_size_in_gb?: number
	})

	_#defs: "/$defs/async_inference_config/$defs/client_config": close({
		max_concurrent_invocations_per_instance?: number
	})

	_#defs: "/$defs/async_inference_config/$defs/output_config": close({
		notification_config?: matchN(1, [_#defs."/$defs/async_inference_config/$defs/output_config/$defs/notification_config", list.MaxItems(1) & [..._#defs."/$defs/async_inference_config/$defs/output_config/$defs/notification_config"]])
		kms_key_id?:      string
		s3_failure_path?: string
		s3_output_path!:  string
	})

	_#defs: "/$defs/async_inference_config/$defs/output_config/$defs/notification_config": close({
		error_topic?: string
		include_inference_response_in?: [...string]
		success_topic?: string
	})

	_#defs: "/$defs/data_capture_config/$defs/capture_content_type_header": close({
		csv_content_types?: [...string]
		json_content_types?: [...string]
	})

	_#defs: "/$defs/data_capture_config/$defs/capture_options": close({
		capture_mode!: string
	})

	_#defs: "/$defs/production_variants/$defs/core_dump_config": close({
		destination_s3_uri!: string
		kms_key_id?:         string
	})

	_#defs: "/$defs/production_variants/$defs/managed_instance_scaling": close({
		max_instance_count?: number
		min_instance_count?: number
		status?:             string
	})

	_#defs: "/$defs/production_variants/$defs/routing_config": close({
		routing_strategy!: string
	})

	_#defs: "/$defs/production_variants/$defs/serverless_config": close({
		max_concurrency!:         number
		memory_size_in_mb!:       number
		provisioned_concurrency?: number
	})

	_#defs: "/$defs/shadow_production_variants/$defs/core_dump_config": close({
		destination_s3_uri!: string
		kms_key_id!:         string
	})

	_#defs: "/$defs/shadow_production_variants/$defs/managed_instance_scaling": close({
		max_instance_count?: number
		min_instance_count?: number
		status?:             string
	})

	_#defs: "/$defs/shadow_production_variants/$defs/routing_config": close({
		routing_strategy!: string
	})

	_#defs: "/$defs/shadow_production_variants/$defs/serverless_config": close({
		max_concurrency!:         number
		memory_size_in_mb!:       number
		provisioned_concurrency?: number
	})
}
