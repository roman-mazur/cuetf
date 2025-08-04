package res

import "list"

#aws_sagemaker_data_quality_job_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_data_quality_job_definition")
	close({
		arn?:  string
		id?:   string
		name?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		role_arn!: string
		data_quality_app_specification?: matchN(1, [#data_quality_app_specification, list.MaxItems(1) & [_, ...] & [...#data_quality_app_specification]])
		tags?: [string]: string
		data_quality_baseline_config?: matchN(1, [#data_quality_baseline_config, list.MaxItems(1) & [...#data_quality_baseline_config]])
		tags_all?: [string]: string
		data_quality_job_input?: matchN(1, [#data_quality_job_input, list.MaxItems(1) & [_, ...] & [...#data_quality_job_input]])
		data_quality_job_output_config?: matchN(1, [#data_quality_job_output_config, list.MaxItems(1) & [_, ...] & [...#data_quality_job_output_config]])
		job_resources?: matchN(1, [#job_resources, list.MaxItems(1) & [_, ...] & [...#job_resources]])
		network_config?: matchN(1, [#network_config, list.MaxItems(1) & [...#network_config]])
		stopping_condition?: matchN(1, [#stopping_condition, list.MaxItems(1) & [...#stopping_condition]])
	})

	#data_quality_app_specification: close({
		environment?: [string]: string
		image_uri!:                           string
		post_analytics_processor_source_uri?: string
		record_preprocessor_source_uri?:      string
	})

	#data_quality_baseline_config: close({
		constraints_resource?: matchN(1, [_#defs."/$defs/data_quality_baseline_config/$defs/constraints_resource", list.MaxItems(1) & [..._#defs."/$defs/data_quality_baseline_config/$defs/constraints_resource"]])
		statistics_resource?: matchN(1, [_#defs."/$defs/data_quality_baseline_config/$defs/statistics_resource", list.MaxItems(1) & [..._#defs."/$defs/data_quality_baseline_config/$defs/statistics_resource"]])
	})

	#data_quality_job_input: close({
		batch_transform_input?: matchN(1, [_#defs."/$defs/data_quality_job_input/$defs/batch_transform_input", list.MaxItems(1) & [..._#defs."/$defs/data_quality_job_input/$defs/batch_transform_input"]])
		endpoint_input?: matchN(1, [_#defs."/$defs/data_quality_job_input/$defs/endpoint_input", list.MaxItems(1) & [..._#defs."/$defs/data_quality_job_input/$defs/endpoint_input"]])
	})

	#data_quality_job_output_config: close({
		monitoring_outputs?: matchN(1, [_#defs."/$defs/data_quality_job_output_config/$defs/monitoring_outputs", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/data_quality_job_output_config/$defs/monitoring_outputs"]])
		kms_key_id?: string
	})

	#job_resources: close({
		cluster_config?: matchN(1, [_#defs."/$defs/job_resources/$defs/cluster_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/job_resources/$defs/cluster_config"]])
	})

	#network_config: close({
		vpc_config?: matchN(1, [_#defs."/$defs/network_config/$defs/vpc_config", list.MaxItems(1) & [..._#defs."/$defs/network_config/$defs/vpc_config"]])
		enable_inter_container_traffic_encryption?: bool
		enable_network_isolation?:                  bool
	})

	#stopping_condition: close({
		max_runtime_in_seconds?: number
	})

	_#defs: "/$defs/data_quality_baseline_config/$defs/constraints_resource": close({
		s3_uri?: string
	})

	_#defs: "/$defs/data_quality_baseline_config/$defs/statistics_resource": close({
		s3_uri?: string
	})

	_#defs: "/$defs/data_quality_job_input/$defs/batch_transform_input": close({
		dataset_format?: matchN(1, [_#defs."/$defs/data_quality_job_input/$defs/batch_transform_input/$defs/dataset_format", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/data_quality_job_input/$defs/batch_transform_input/$defs/dataset_format"]])
		data_captured_destination_s3_uri!: string
		local_path?:                       string
		s3_data_distribution_type?:        string
		s3_input_mode?:                    string
	})

	_#defs: "/$defs/data_quality_job_input/$defs/batch_transform_input/$defs/dataset_format": close({
		csv?: matchN(1, [_#defs."/$defs/data_quality_job_input/$defs/batch_transform_input/$defs/dataset_format/$defs/csv", list.MaxItems(1) & [..._#defs."/$defs/data_quality_job_input/$defs/batch_transform_input/$defs/dataset_format/$defs/csv"]])
		json?: matchN(1, [_#defs."/$defs/data_quality_job_input/$defs/batch_transform_input/$defs/dataset_format/$defs/json", list.MaxItems(1) & [..._#defs."/$defs/data_quality_job_input/$defs/batch_transform_input/$defs/dataset_format/$defs/json"]])
	})

	_#defs: "/$defs/data_quality_job_input/$defs/batch_transform_input/$defs/dataset_format/$defs/csv": close({
		header?: bool
	})

	_#defs: "/$defs/data_quality_job_input/$defs/batch_transform_input/$defs/dataset_format/$defs/json": close({
		line?: bool
	})

	_#defs: "/$defs/data_quality_job_input/$defs/endpoint_input": close({
		endpoint_name!:             string
		local_path?:                string
		s3_data_distribution_type?: string
		s3_input_mode?:             string
	})

	_#defs: "/$defs/data_quality_job_output_config/$defs/monitoring_outputs": close({
		s3_output?: matchN(1, [_#defs."/$defs/data_quality_job_output_config/$defs/monitoring_outputs/$defs/s3_output", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/data_quality_job_output_config/$defs/monitoring_outputs/$defs/s3_output"]])
	})

	_#defs: "/$defs/data_quality_job_output_config/$defs/monitoring_outputs/$defs/s3_output": close({
		local_path?:     string
		s3_upload_mode?: string
		s3_uri!:         string
	})

	_#defs: "/$defs/job_resources/$defs/cluster_config": close({
		instance_count!:    number
		instance_type!:     string
		volume_kms_key_id?: string
		volume_size_in_gb!: number
	})

	_#defs: "/$defs/network_config/$defs/vpc_config": close({
		security_group_ids!: [...string]
		subnets!: [...string]
	})
}
