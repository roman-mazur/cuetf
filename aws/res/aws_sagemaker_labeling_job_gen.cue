package res

#aws_sagemaker_labeling_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_sagemaker_labeling_job")
	close({
		failure_reason?:               string
		job_reference_code?:           string
		label_attribute_name!:         string
		label_category_config_s3_uri?: string
		label_counters?: [...close({
			failed_non_retryable_error?: number
			human_labeled?:              number
			machine_labeled?:            number
			total_labeled?:              number
			unlabeled?:                  number
		})]
		labeling_job_arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		labeling_job_name!:   string
		labeling_job_status?: string
		human_task_config?: matchN(1, [#human_task_config, [...#human_task_config]])
		input_config?: matchN(1, [#input_config, [...#input_config]])
		role_arn!: string
		stopping_conditions?: [...close({
			max_human_labeled_object_count?:          number
			max_percentage_of_input_dataset_labeled?: number
		})]
		tags?: [string]:     string
		tags_all?: [string]: string
		labeling_job_algorithms_config?: matchN(1, [#labeling_job_algorithms_config, [...#labeling_job_algorithms_config]])
		output_config?: matchN(1, [#output_config, [...#output_config]])
	})

	#human_task_config: close({
		max_concurrent_task_count?:               number
		number_of_human_workers_per_data_object!: number
		pre_human_task_lambda_arn?:               string
		task_availability_lifetime_in_seconds?:   number
		task_description!:                        string
		task_keywords?: [...string]
		task_time_limit_in_seconds!: number
		annotation_consolidation_config?: matchN(1, [_#defs."/$defs/human_task_config/$defs/annotation_consolidation_config", [..._#defs."/$defs/human_task_config/$defs/annotation_consolidation_config"]])
		task_title!: string
		public_workforce_task_price?: matchN(1, [_#defs."/$defs/human_task_config/$defs/public_workforce_task_price", [..._#defs."/$defs/human_task_config/$defs/public_workforce_task_price"]])
		ui_config?: matchN(1, [_#defs."/$defs/human_task_config/$defs/ui_config", [..._#defs."/$defs/human_task_config/$defs/ui_config"]])
		workteam_arn!: string
	})

	#input_config: close({
		data_attributes?: matchN(1, [_#defs."/$defs/input_config/$defs/data_attributes", [..._#defs."/$defs/input_config/$defs/data_attributes"]])
		data_source?: matchN(1, [_#defs."/$defs/input_config/$defs/data_source", [..._#defs."/$defs/input_config/$defs/data_source"]])
	})

	#labeling_job_algorithms_config: close({
		labeling_job_resource_config?: matchN(1, [_#defs."/$defs/labeling_job_algorithms_config/$defs/labeling_job_resource_config", [..._#defs."/$defs/labeling_job_algorithms_config/$defs/labeling_job_resource_config"]])
		initial_active_learning_model_arn?:        string
		labeling_job_algorithm_specification_arn!: string
	})

	#output_config: close({
		kms_key_id?:     string
		s3_output_path!: string
		sns_topic_arn?:  string
	})

	_#defs: "/$defs/human_task_config/$defs/annotation_consolidation_config": close({
		annotation_consolidation_lambda_arn!: string
	})

	_#defs: "/$defs/human_task_config/$defs/public_workforce_task_price": close({
		amount_in_usd?: matchN(1, [_#defs."/$defs/human_task_config/$defs/public_workforce_task_price/$defs/amount_in_usd", [..._#defs."/$defs/human_task_config/$defs/public_workforce_task_price/$defs/amount_in_usd"]])
	})

	_#defs: "/$defs/human_task_config/$defs/public_workforce_task_price/$defs/amount_in_usd": close({
		cents?:                     number
		dollars?:                   number
		tenth_fractions_of_a_cent?: number
	})

	_#defs: "/$defs/human_task_config/$defs/ui_config": close({
		human_task_ui_arn?:  string
		ui_template_s3_uri?: string
	})

	_#defs: "/$defs/input_config/$defs/data_attributes": close({
		content_classifiers?: [...string]
	})

	_#defs: "/$defs/input_config/$defs/data_source": close({
		s3_data_source?: matchN(1, [_#defs."/$defs/input_config/$defs/data_source/$defs/s3_data_source", [..._#defs."/$defs/input_config/$defs/data_source/$defs/s3_data_source"]])
		sns_data_source?: matchN(1, [_#defs."/$defs/input_config/$defs/data_source/$defs/sns_data_source", [..._#defs."/$defs/input_config/$defs/data_source/$defs/sns_data_source"]])
	})

	_#defs: "/$defs/input_config/$defs/data_source/$defs/s3_data_source": close({
		manifest_s3_uri!: string
	})

	_#defs: "/$defs/input_config/$defs/data_source/$defs/sns_data_source": close({
		sns_topic_arn!: string
	})

	_#defs: "/$defs/labeling_job_algorithms_config/$defs/labeling_job_resource_config": close({
		vpc_config?: matchN(1, [_#defs."/$defs/labeling_job_algorithms_config/$defs/labeling_job_resource_config/$defs/vpc_config", [..._#defs."/$defs/labeling_job_algorithms_config/$defs/labeling_job_resource_config/$defs/vpc_config"]])
		volume_kms_key_id?: string
	})

	_#defs: "/$defs/labeling_job_algorithms_config/$defs/labeling_job_resource_config/$defs/vpc_config": close({
		security_group_ids!: [...string]
		subnets!: [...string]
	})
}
