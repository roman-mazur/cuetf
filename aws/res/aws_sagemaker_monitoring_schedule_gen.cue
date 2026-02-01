package res

import "list"

#aws_sagemaker_monitoring_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_sagemaker_monitoring_schedule")
	close({
		arn?:  string
		id?:   string
		name?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		monitoring_schedule_config!: matchN(1, [#monitoring_schedule_config, list.MaxItems(1) & [_, ...] & [...#monitoring_schedule_config]])
	})

	#monitoring_schedule_config: close({
		monitoring_job_definition?: matchN(1, [_#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition", list.MaxItems(1) & [..._#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition"]])
		schedule_config?: matchN(1, [_#defs."/$defs/monitoring_schedule_config/$defs/schedule_config", list.MaxItems(1) & [..._#defs."/$defs/monitoring_schedule_config/$defs/schedule_config"]])
		monitoring_job_definition_name?: string
		monitoring_type!:                string
	})

	_#defs: "/$defs/monitoring_schedule_config/$defs/monitoring_job_definition": close({
		baseline?: matchN(1, [_#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/baseline", list.MaxItems(1) & [..._#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/baseline"]])
		monitoring_app_specification!: matchN(1, [_#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_app_specification", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_app_specification"]])
		environment?: [string]: string
		monitoring_inputs!: matchN(1, [_#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_inputs", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_inputs"]])
		monitoring_output_config!: matchN(1, [_#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_output_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_output_config"]])
		monitoring_resources!: matchN(1, [_#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_resources", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_resources"]])
		network_config?: matchN(1, [_#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/network_config", list.MaxItems(1) & [..._#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/network_config"]])
		role_arn!: string
		stopping_condition?: matchN(1, [_#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/stopping_condition", [..._#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/stopping_condition"]])
	})

	_#defs: "/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/baseline": close({
		constraints_resource?: matchN(1, [_#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/baseline/$defs/constraints_resource", list.MaxItems(1) & [..._#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/baseline/$defs/constraints_resource"]])
		statistics_resource?: matchN(1, [_#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/baseline/$defs/statistics_resource", list.MaxItems(1) & [..._#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/baseline/$defs/statistics_resource"]])
		baselining_job_name?: string
	})

	_#defs: "/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/baseline/$defs/constraints_resource": close({
		s3_uri?: string
	})

	_#defs: "/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/baseline/$defs/statistics_resource": close({
		s3_uri?: string
	})

	_#defs: "/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_app_specification": close({
		container_arguments?: [...string]
		container_entrypoint?: [...string]
		image_uri!:                           string
		post_analytics_processor_source_uri?: string
		record_preprocessor_source_uri?:      string
	})

	_#defs: "/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_inputs": close({
		batch_transform_input?: matchN(1, [_#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_inputs/$defs/batch_transform_input", list.MaxItems(1) & [..._#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_inputs/$defs/batch_transform_input"]])
		endpoint_input?: matchN(1, [_#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_inputs/$defs/endpoint_input", list.MaxItems(1) & [..._#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_inputs/$defs/endpoint_input"]])
	})

	_#defs: "/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_inputs/$defs/batch_transform_input": close({
		data_captured_destination_s3_uri!: string
		end_time_offset?:                  string
		exclude_features_attribute?:       string
		features_attribute?:               string
		inference_attribute?:              string
		local_path!:                       string
		probability_attribute?:            string
		probability_threshold_attribute?:  number
		s3_data_distribution_type?:        string
		dataset_format!: matchN(1, [_#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_inputs/$defs/batch_transform_input/$defs/dataset_format", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_inputs/$defs/batch_transform_input/$defs/dataset_format"]])
		s3_input_mode?:     string
		start_time_offset?: string
	})

	_#defs: "/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_inputs/$defs/batch_transform_input/$defs/dataset_format": close({
		csv?: matchN(1, [_#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_inputs/$defs/batch_transform_input/$defs/dataset_format/$defs/csv", list.MaxItems(1) & [..._#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_inputs/$defs/batch_transform_input/$defs/dataset_format/$defs/csv"]])
		json?: matchN(1, [_#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_inputs/$defs/batch_transform_input/$defs/dataset_format/$defs/json", list.MaxItems(1) & [..._#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_inputs/$defs/batch_transform_input/$defs/dataset_format/$defs/json"]])
	})

	_#defs: "/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_inputs/$defs/batch_transform_input/$defs/dataset_format/$defs/csv": close({
		header?: bool
	})

	_#defs: "/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_inputs/$defs/batch_transform_input/$defs/dataset_format/$defs/json": close({
		line?: bool
	})

	_#defs: "/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_inputs/$defs/endpoint_input": close({
		end_time_offset?:                 string
		endpoint_name!:                   string
		exclude_features_attribute?:      string
		features_attribute?:              string
		inference_attribute?:             string
		local_path!:                      string
		probability_attribute?:           string
		probability_threshold_attribute?: number
		s3_data_distribution_type?:       string
		s3_input_mode?:                   string
		start_time_offset?:               string
	})

	_#defs: "/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_output_config": close({
		monitoring_outputs!: matchN(1, [_#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_output_config/$defs/monitoring_outputs", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_output_config/$defs/monitoring_outputs"]])
		kms_key_id?: string
	})

	_#defs: "/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_output_config/$defs/monitoring_outputs": close({
		s3_output!: matchN(1, [_#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_output_config/$defs/monitoring_outputs/$defs/s3_output", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_output_config/$defs/monitoring_outputs/$defs/s3_output"]])
	})

	_#defs: "/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_output_config/$defs/monitoring_outputs/$defs/s3_output": close({
		local_path!:     string
		s3_upload_mode?: string
		s3_uri!:         string
	})

	_#defs: "/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_resources": close({
		cluster_config!: matchN(1, [_#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_resources/$defs/cluster_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_resources/$defs/cluster_config"]])
	})

	_#defs: "/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/monitoring_resources/$defs/cluster_config": close({
		instance_count!:    number
		instance_type!:     string
		volume_kms_key_id?: string
		volume_size_in_gb!: number
	})

	_#defs: "/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/network_config": close({
		vpc_config?: matchN(1, [_#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/network_config/$defs/vpc_config", list.MaxItems(1) & [..._#defs."/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/network_config/$defs/vpc_config"]])
		enable_inter_container_traffic_encryption?: bool
		enable_network_isolation?:                  bool
	})

	_#defs: "/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/network_config/$defs/vpc_config": close({
		security_group_ids!: [...string]
		subnets!: [...string]
	})

	_#defs: "/$defs/monitoring_schedule_config/$defs/monitoring_job_definition/$defs/stopping_condition": close({
		max_runtime_in_seconds?: number
	})

	_#defs: "/$defs/monitoring_schedule_config/$defs/schedule_config": close({
		schedule_expression!: string
	})
}
