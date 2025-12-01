package res

import "list"

#aws_pipes_pipe: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_pipes_pipe")
	close({
		arn?:           string
		description?:   string
		desired_state?: string
		enrichment?:    string
		id?:            string
		enrichment_parameters?: matchN(1, [#enrichment_parameters, list.MaxItems(1) & [...#enrichment_parameters]])
		kms_key_identifier?: string
		name?:               string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		name_prefix?: string
		log_configuration?: matchN(1, [#log_configuration, list.MaxItems(1) & [...#log_configuration]])
		role_arn!: string
		source!:   string
		tags?: [string]:     string
		tags_all?: [string]: string
		target!: string
		source_parameters?: matchN(1, [#source_parameters, list.MaxItems(1) & [...#source_parameters]])
		target_parameters?: matchN(1, [#target_parameters, list.MaxItems(1) & [...#target_parameters]])
		timeouts?: #timeouts
	})

	#enrichment_parameters: close({
		http_parameters?: matchN(1, [_#defs."/$defs/enrichment_parameters/$defs/http_parameters", list.MaxItems(1) & [..._#defs."/$defs/enrichment_parameters/$defs/http_parameters"]])
		input_template?: string
	})

	#log_configuration: close({
		cloudwatch_logs_log_destination?: matchN(1, [_#defs."/$defs/log_configuration/$defs/cloudwatch_logs_log_destination", list.MaxItems(1) & [..._#defs."/$defs/log_configuration/$defs/cloudwatch_logs_log_destination"]])
		firehose_log_destination?: matchN(1, [_#defs."/$defs/log_configuration/$defs/firehose_log_destination", list.MaxItems(1) & [..._#defs."/$defs/log_configuration/$defs/firehose_log_destination"]])
		s3_log_destination?: matchN(1, [_#defs."/$defs/log_configuration/$defs/s3_log_destination", list.MaxItems(1) & [..._#defs."/$defs/log_configuration/$defs/s3_log_destination"]])
		include_execution_data?: [...string]
		level!: string
	})

	#source_parameters: close({
		activemq_broker_parameters?: matchN(1, [_#defs."/$defs/source_parameters/$defs/activemq_broker_parameters", list.MaxItems(1) & [..._#defs."/$defs/source_parameters/$defs/activemq_broker_parameters"]])
		dynamodb_stream_parameters?: matchN(1, [_#defs."/$defs/source_parameters/$defs/dynamodb_stream_parameters", list.MaxItems(1) & [..._#defs."/$defs/source_parameters/$defs/dynamodb_stream_parameters"]])
		filter_criteria?: matchN(1, [_#defs."/$defs/source_parameters/$defs/filter_criteria", list.MaxItems(1) & [..._#defs."/$defs/source_parameters/$defs/filter_criteria"]])
		kinesis_stream_parameters?: matchN(1, [_#defs."/$defs/source_parameters/$defs/kinesis_stream_parameters", list.MaxItems(1) & [..._#defs."/$defs/source_parameters/$defs/kinesis_stream_parameters"]])
		managed_streaming_kafka_parameters?: matchN(1, [_#defs."/$defs/source_parameters/$defs/managed_streaming_kafka_parameters", list.MaxItems(1) & [..._#defs."/$defs/source_parameters/$defs/managed_streaming_kafka_parameters"]])
		rabbitmq_broker_parameters?: matchN(1, [_#defs."/$defs/source_parameters/$defs/rabbitmq_broker_parameters", list.MaxItems(1) & [..._#defs."/$defs/source_parameters/$defs/rabbitmq_broker_parameters"]])
		self_managed_kafka_parameters?: matchN(1, [_#defs."/$defs/source_parameters/$defs/self_managed_kafka_parameters", list.MaxItems(1) & [..._#defs."/$defs/source_parameters/$defs/self_managed_kafka_parameters"]])
		sqs_queue_parameters?: matchN(1, [_#defs."/$defs/source_parameters/$defs/sqs_queue_parameters", list.MaxItems(1) & [..._#defs."/$defs/source_parameters/$defs/sqs_queue_parameters"]])
	})

	#target_parameters: close({
		batch_job_parameters?: matchN(1, [_#defs."/$defs/target_parameters/$defs/batch_job_parameters", list.MaxItems(1) & [..._#defs."/$defs/target_parameters/$defs/batch_job_parameters"]])
		cloudwatch_logs_parameters?: matchN(1, [_#defs."/$defs/target_parameters/$defs/cloudwatch_logs_parameters", list.MaxItems(1) & [..._#defs."/$defs/target_parameters/$defs/cloudwatch_logs_parameters"]])
		input_template?: string
		ecs_task_parameters?: matchN(1, [_#defs."/$defs/target_parameters/$defs/ecs_task_parameters", list.MaxItems(1) & [..._#defs."/$defs/target_parameters/$defs/ecs_task_parameters"]])
		eventbridge_event_bus_parameters?: matchN(1, [_#defs."/$defs/target_parameters/$defs/eventbridge_event_bus_parameters", list.MaxItems(1) & [..._#defs."/$defs/target_parameters/$defs/eventbridge_event_bus_parameters"]])
		http_parameters?: matchN(1, [_#defs."/$defs/target_parameters/$defs/http_parameters", list.MaxItems(1) & [..._#defs."/$defs/target_parameters/$defs/http_parameters"]])
		kinesis_stream_parameters?: matchN(1, [_#defs."/$defs/target_parameters/$defs/kinesis_stream_parameters", list.MaxItems(1) & [..._#defs."/$defs/target_parameters/$defs/kinesis_stream_parameters"]])
		lambda_function_parameters?: matchN(1, [_#defs."/$defs/target_parameters/$defs/lambda_function_parameters", list.MaxItems(1) & [..._#defs."/$defs/target_parameters/$defs/lambda_function_parameters"]])
		redshift_data_parameters?: matchN(1, [_#defs."/$defs/target_parameters/$defs/redshift_data_parameters", list.MaxItems(1) & [..._#defs."/$defs/target_parameters/$defs/redshift_data_parameters"]])
		sagemaker_pipeline_parameters?: matchN(1, [_#defs."/$defs/target_parameters/$defs/sagemaker_pipeline_parameters", list.MaxItems(1) & [..._#defs."/$defs/target_parameters/$defs/sagemaker_pipeline_parameters"]])
		sqs_queue_parameters?: matchN(1, [_#defs."/$defs/target_parameters/$defs/sqs_queue_parameters", list.MaxItems(1) & [..._#defs."/$defs/target_parameters/$defs/sqs_queue_parameters"]])
		step_function_state_machine_parameters?: matchN(1, [_#defs."/$defs/target_parameters/$defs/step_function_state_machine_parameters", list.MaxItems(1) & [..._#defs."/$defs/target_parameters/$defs/step_function_state_machine_parameters"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/enrichment_parameters/$defs/http_parameters": close({
		header_parameters?: [string]: string
		path_parameter_values?: [...string]
		query_string_parameters?: [string]: string
	})

	_#defs: "/$defs/log_configuration/$defs/cloudwatch_logs_log_destination": close({
		log_group_arn!: string
	})

	_#defs: "/$defs/log_configuration/$defs/firehose_log_destination": close({
		delivery_stream_arn!: string
	})

	_#defs: "/$defs/log_configuration/$defs/s3_log_destination": close({
		bucket_name!:   string
		bucket_owner!:  string
		output_format?: string
		prefix?:        string
	})

	_#defs: "/$defs/source_parameters/$defs/activemq_broker_parameters": close({
		credentials!: matchN(1, [_#defs."/$defs/source_parameters/$defs/activemq_broker_parameters/$defs/credentials", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/source_parameters/$defs/activemq_broker_parameters/$defs/credentials"]])
		batch_size?:                         number
		maximum_batching_window_in_seconds?: number
		queue_name!:                         string
	})

	_#defs: "/$defs/source_parameters/$defs/activemq_broker_parameters/$defs/credentials": close({
		basic_auth!: string
	})

	_#defs: "/$defs/source_parameters/$defs/dynamodb_stream_parameters": close({
		dead_letter_config?: matchN(1, [_#defs."/$defs/source_parameters/$defs/dynamodb_stream_parameters/$defs/dead_letter_config", list.MaxItems(1) & [..._#defs."/$defs/source_parameters/$defs/dynamodb_stream_parameters/$defs/dead_letter_config"]])
		batch_size?:                         number
		maximum_batching_window_in_seconds?: number
		maximum_record_age_in_seconds?:      number
		maximum_retry_attempts?:             number
		on_partial_batch_item_failure?:      string
		parallelization_factor?:             number
		starting_position!:                  string
	})

	_#defs: "/$defs/source_parameters/$defs/dynamodb_stream_parameters/$defs/dead_letter_config": close({
		arn?: string
	})

	_#defs: "/$defs/source_parameters/$defs/filter_criteria": close({
		filter?: matchN(1, [_#defs."/$defs/source_parameters/$defs/filter_criteria/$defs/filter", list.MaxItems(5) & [..._#defs."/$defs/source_parameters/$defs/filter_criteria/$defs/filter"]])
	})

	_#defs: "/$defs/source_parameters/$defs/filter_criteria/$defs/filter": close({
		pattern!: string
	})

	_#defs: "/$defs/source_parameters/$defs/kinesis_stream_parameters": close({
		dead_letter_config?: matchN(1, [_#defs."/$defs/source_parameters/$defs/kinesis_stream_parameters/$defs/dead_letter_config", list.MaxItems(1) & [..._#defs."/$defs/source_parameters/$defs/kinesis_stream_parameters/$defs/dead_letter_config"]])
		batch_size?:                         number
		maximum_batching_window_in_seconds?: number
		maximum_record_age_in_seconds?:      number
		maximum_retry_attempts?:             number
		on_partial_batch_item_failure?:      string
		parallelization_factor?:             number
		starting_position!:                  string
		starting_position_timestamp?:        string
	})

	_#defs: "/$defs/source_parameters/$defs/kinesis_stream_parameters/$defs/dead_letter_config": close({
		arn?: string
	})

	_#defs: "/$defs/source_parameters/$defs/managed_streaming_kafka_parameters": close({
		credentials?: matchN(1, [_#defs."/$defs/source_parameters/$defs/managed_streaming_kafka_parameters/$defs/credentials", list.MaxItems(1) & [..._#defs."/$defs/source_parameters/$defs/managed_streaming_kafka_parameters/$defs/credentials"]])
		batch_size?:                         number
		consumer_group_id?:                  string
		maximum_batching_window_in_seconds?: number
		starting_position?:                  string
		topic_name!:                         string
	})

	_#defs: "/$defs/source_parameters/$defs/managed_streaming_kafka_parameters/$defs/credentials": close({
		client_certificate_tls_auth?: string
		sasl_scram_512_auth?:         string
	})

	_#defs: "/$defs/source_parameters/$defs/rabbitmq_broker_parameters": close({
		credentials!: matchN(1, [_#defs."/$defs/source_parameters/$defs/rabbitmq_broker_parameters/$defs/credentials", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/source_parameters/$defs/rabbitmq_broker_parameters/$defs/credentials"]])
		batch_size?:                         number
		maximum_batching_window_in_seconds?: number
		queue_name!:                         string
		virtual_host?:                       string
	})

	_#defs: "/$defs/source_parameters/$defs/rabbitmq_broker_parameters/$defs/credentials": close({
		basic_auth!: string
	})

	_#defs: "/$defs/source_parameters/$defs/self_managed_kafka_parameters": close({
		credentials?: matchN(1, [_#defs."/$defs/source_parameters/$defs/self_managed_kafka_parameters/$defs/credentials", list.MaxItems(1) & [..._#defs."/$defs/source_parameters/$defs/self_managed_kafka_parameters/$defs/credentials"]])
		additional_bootstrap_servers?: [...string]
		batch_size?:                         number
		consumer_group_id?:                  string
		maximum_batching_window_in_seconds?: number
		server_root_ca_certificate?:         string
		starting_position?:                  string
		topic_name!:                         string
		vpc?: matchN(1, [_#defs."/$defs/source_parameters/$defs/self_managed_kafka_parameters/$defs/vpc", list.MaxItems(1) & [..._#defs."/$defs/source_parameters/$defs/self_managed_kafka_parameters/$defs/vpc"]])
	})

	_#defs: "/$defs/source_parameters/$defs/self_managed_kafka_parameters/$defs/credentials": close({
		basic_auth?:                  string
		client_certificate_tls_auth?: string
		sasl_scram_256_auth?:         string
		sasl_scram_512_auth?:         string
	})

	_#defs: "/$defs/source_parameters/$defs/self_managed_kafka_parameters/$defs/vpc": close({
		security_groups?: [...string]
		subnets?: [...string]
	})

	_#defs: "/$defs/source_parameters/$defs/sqs_queue_parameters": close({
		batch_size?:                         number
		maximum_batching_window_in_seconds?: number
	})

	_#defs: "/$defs/target_parameters/$defs/batch_job_parameters": close({
		array_properties?: matchN(1, [_#defs."/$defs/target_parameters/$defs/batch_job_parameters/$defs/array_properties", list.MaxItems(1) & [..._#defs."/$defs/target_parameters/$defs/batch_job_parameters/$defs/array_properties"]])
		container_overrides?: matchN(1, [_#defs."/$defs/target_parameters/$defs/batch_job_parameters/$defs/container_overrides", list.MaxItems(1) & [..._#defs."/$defs/target_parameters/$defs/batch_job_parameters/$defs/container_overrides"]])
		depends_on?: matchN(1, [_#defs."/$defs/target_parameters/$defs/batch_job_parameters/$defs/depends_on", list.MaxItems(20) & [..._#defs."/$defs/target_parameters/$defs/batch_job_parameters/$defs/depends_on"]])
		retry_strategy?: matchN(1, [_#defs."/$defs/target_parameters/$defs/batch_job_parameters/$defs/retry_strategy", list.MaxItems(1) & [..._#defs."/$defs/target_parameters/$defs/batch_job_parameters/$defs/retry_strategy"]])
		job_definition!: string
		job_name!:       string
		parameters?: [string]: string
	})

	_#defs: "/$defs/target_parameters/$defs/batch_job_parameters/$defs/array_properties": close({
		size?: number
	})

	_#defs: "/$defs/target_parameters/$defs/batch_job_parameters/$defs/container_overrides": close({
		environment?: matchN(1, [_#defs."/$defs/target_parameters/$defs/batch_job_parameters/$defs/container_overrides/$defs/environment", [..._#defs."/$defs/target_parameters/$defs/batch_job_parameters/$defs/container_overrides/$defs/environment"]])
		resource_requirement?: matchN(1, [_#defs."/$defs/target_parameters/$defs/batch_job_parameters/$defs/container_overrides/$defs/resource_requirement", [..._#defs."/$defs/target_parameters/$defs/batch_job_parameters/$defs/container_overrides/$defs/resource_requirement"]])
		command?: [...string]
		instance_type?: string
	})

	_#defs: "/$defs/target_parameters/$defs/batch_job_parameters/$defs/container_overrides/$defs/environment": close({
		name?:  string
		value?: string
	})

	_#defs: "/$defs/target_parameters/$defs/batch_job_parameters/$defs/container_overrides/$defs/resource_requirement": close({
		type!:  string
		value!: string
	})

	_#defs: "/$defs/target_parameters/$defs/batch_job_parameters/$defs/depends_on": close({
		job_id?: string
		type?:   string
	})

	_#defs: "/$defs/target_parameters/$defs/batch_job_parameters/$defs/retry_strategy": close({
		attempts?: number
	})

	_#defs: "/$defs/target_parameters/$defs/cloudwatch_logs_parameters": close({
		log_stream_name?: string
		timestamp?:       string
	})

	_#defs: "/$defs/target_parameters/$defs/ecs_task_parameters": close({
		enable_ecs_managed_tags?: bool
		enable_execute_command?:  bool
		group?:                   string
		launch_type?:             string
		capacity_provider_strategy?: matchN(1, [_#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/capacity_provider_strategy", list.MaxItems(6) & [..._#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/capacity_provider_strategy"]])
		platform_version?: string
		propagate_tags?:   string
		network_configuration?: matchN(1, [_#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/network_configuration", list.MaxItems(1) & [..._#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/network_configuration"]])
		reference_id?: string
		tags?: [string]: string
		task_count?: number
		overrides?: matchN(1, [_#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/overrides", list.MaxItems(1) & [..._#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/overrides"]])
		placement_constraint?: matchN(1, [_#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/placement_constraint", list.MaxItems(10) & [..._#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/placement_constraint"]])
		task_definition_arn!: string
		placement_strategy?: matchN(1, [_#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/placement_strategy", list.MaxItems(5) & [..._#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/placement_strategy"]])
	})

	_#defs: "/$defs/target_parameters/$defs/ecs_task_parameters/$defs/capacity_provider_strategy": close({
		base?:              number
		capacity_provider!: string
		weight?:            number
	})

	_#defs: "/$defs/target_parameters/$defs/ecs_task_parameters/$defs/network_configuration": close({
		aws_vpc_configuration?: matchN(1, [_#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/network_configuration/$defs/aws_vpc_configuration", list.MaxItems(1) & [..._#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/network_configuration/$defs/aws_vpc_configuration"]])
	})

	_#defs: "/$defs/target_parameters/$defs/ecs_task_parameters/$defs/network_configuration/$defs/aws_vpc_configuration": close({
		assign_public_ip?: string
		security_groups?: [...string]
		subnets?: [...string]
	})

	_#defs: "/$defs/target_parameters/$defs/ecs_task_parameters/$defs/overrides": close({
		container_override?: matchN(1, [_#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/overrides/$defs/container_override", [..._#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/overrides/$defs/container_override"]])
		cpu?:                string
		execution_role_arn?: string
		memory?:             string
		task_role_arn?:      string
		ephemeral_storage?: matchN(1, [_#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/overrides/$defs/ephemeral_storage", list.MaxItems(1) & [..._#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/overrides/$defs/ephemeral_storage"]])
		inference_accelerator_override?: matchN(1, [_#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/overrides/$defs/inference_accelerator_override", [..._#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/overrides/$defs/inference_accelerator_override"]])
	})

	_#defs: "/$defs/target_parameters/$defs/ecs_task_parameters/$defs/overrides/$defs/container_override": close({
		command?: [...string]
		environment?: matchN(1, [_#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/overrides/$defs/container_override/$defs/environment", [..._#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/overrides/$defs/container_override/$defs/environment"]])
		cpu?:                number
		memory?:             number
		memory_reservation?: number
		name?:               string
		environment_file?: matchN(1, [_#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/overrides/$defs/container_override/$defs/environment_file", [..._#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/overrides/$defs/container_override/$defs/environment_file"]])
		resource_requirement?: matchN(1, [_#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/overrides/$defs/container_override/$defs/resource_requirement", [..._#defs."/$defs/target_parameters/$defs/ecs_task_parameters/$defs/overrides/$defs/container_override/$defs/resource_requirement"]])
	})

	_#defs: "/$defs/target_parameters/$defs/ecs_task_parameters/$defs/overrides/$defs/container_override/$defs/environment": close({
		name?:  string
		value?: string
	})

	_#defs: "/$defs/target_parameters/$defs/ecs_task_parameters/$defs/overrides/$defs/container_override/$defs/environment_file": close({
		type!:  string
		value!: string
	})

	_#defs: "/$defs/target_parameters/$defs/ecs_task_parameters/$defs/overrides/$defs/container_override/$defs/resource_requirement": close({
		type!:  string
		value!: string
	})

	_#defs: "/$defs/target_parameters/$defs/ecs_task_parameters/$defs/overrides/$defs/ephemeral_storage": close({
		size_in_gib!: number
	})

	_#defs: "/$defs/target_parameters/$defs/ecs_task_parameters/$defs/overrides/$defs/inference_accelerator_override": close({
		device_name?: string
		device_type?: string
	})

	_#defs: "/$defs/target_parameters/$defs/ecs_task_parameters/$defs/placement_constraint": close({
		expression?: string
		type?:       string
	})

	_#defs: "/$defs/target_parameters/$defs/ecs_task_parameters/$defs/placement_strategy": close({
		field?: string
		type?:  string
	})

	_#defs: "/$defs/target_parameters/$defs/eventbridge_event_bus_parameters": close({
		detail_type?: string
		endpoint_id?: string
		resources?: [...string]
		source?: string
		time?:   string
	})

	_#defs: "/$defs/target_parameters/$defs/http_parameters": close({
		header_parameters?: [string]: string
		path_parameter_values?: [...string]
		query_string_parameters?: [string]: string
	})

	_#defs: "/$defs/target_parameters/$defs/kinesis_stream_parameters": close({
		partition_key!: string
	})

	_#defs: "/$defs/target_parameters/$defs/lambda_function_parameters": close({
		invocation_type!: string
	})

	_#defs: "/$defs/target_parameters/$defs/redshift_data_parameters": close({
		database!:           string
		db_user?:            string
		secret_manager_arn?: string
		sqls!: [...string]
		statement_name?: string
		with_event?:     bool
	})

	_#defs: "/$defs/target_parameters/$defs/sagemaker_pipeline_parameters": close({
		pipeline_parameter?: matchN(1, [_#defs."/$defs/target_parameters/$defs/sagemaker_pipeline_parameters/$defs/pipeline_parameter", list.MaxItems(200) & [..._#defs."/$defs/target_parameters/$defs/sagemaker_pipeline_parameters/$defs/pipeline_parameter"]])
	})

	_#defs: "/$defs/target_parameters/$defs/sagemaker_pipeline_parameters/$defs/pipeline_parameter": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/target_parameters/$defs/sqs_queue_parameters": close({
		message_deduplication_id?: string
		message_group_id?:         string
	})

	_#defs: "/$defs/target_parameters/$defs/step_function_state_machine_parameters": close({
		invocation_type!: string
	})
}
