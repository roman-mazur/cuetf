package res

import "list"

#aws_kinesisanalyticsv2_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kinesisanalyticsv2_application")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                string
		application_mode?:      string
		arn?:                   string
		create_timestamp?:      string
		description?:           string
		force_stop?:            bool
		id?:                    string
		last_update_timestamp?: string
		name!:                  string
		application_configuration?: matchN(1, [#application_configuration, list.MaxItems(1) & [...#application_configuration]])
		runtime_environment!: string
		cloudwatch_logging_options?: matchN(1, [#cloudwatch_logging_options, list.MaxItems(1) & [...#cloudwatch_logging_options]])
		service_execution_role!: string
		start_application?:      bool
		status?:                 string
		tags?: [string]:     string
		tags_all?: [string]: string
		version_id?: number
		timeouts?:   #timeouts
	})

	#application_configuration: close({
		application_code_configuration!: matchN(1, [_#defs."/$defs/application_configuration/$defs/application_code_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/application_configuration/$defs/application_code_configuration"]])
		application_snapshot_configuration?: matchN(1, [_#defs."/$defs/application_configuration/$defs/application_snapshot_configuration", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/application_snapshot_configuration"]])
		environment_properties?: matchN(1, [_#defs."/$defs/application_configuration/$defs/environment_properties", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/environment_properties"]])
		flink_application_configuration?: matchN(1, [_#defs."/$defs/application_configuration/$defs/flink_application_configuration", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/flink_application_configuration"]])
		run_configuration?: matchN(1, [_#defs."/$defs/application_configuration/$defs/run_configuration", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/run_configuration"]])
		sql_application_configuration?: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration"]])
		vpc_configuration?: matchN(1, [_#defs."/$defs/application_configuration/$defs/vpc_configuration", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/vpc_configuration"]])
	})

	#cloudwatch_logging_options: close({
		cloudwatch_logging_option_id?: string
		log_stream_arn!:               string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/application_configuration/$defs/application_code_configuration": close({
		code_content?: matchN(1, [_#defs."/$defs/application_configuration/$defs/application_code_configuration/$defs/code_content", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/application_code_configuration/$defs/code_content"]])
		code_content_type!: string
	})

	_#defs: "/$defs/application_configuration/$defs/application_code_configuration/$defs/code_content": close({
		s3_content_location?: matchN(1, [_#defs."/$defs/application_configuration/$defs/application_code_configuration/$defs/code_content/$defs/s3_content_location", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/application_code_configuration/$defs/code_content/$defs/s3_content_location"]])
		text_content?: string
	})

	_#defs: "/$defs/application_configuration/$defs/application_code_configuration/$defs/code_content/$defs/s3_content_location": close({
		bucket_arn!:     string
		file_key!:       string
		object_version?: string
	})

	_#defs: "/$defs/application_configuration/$defs/application_snapshot_configuration": close({
		snapshots_enabled!: bool
	})

	_#defs: "/$defs/application_configuration/$defs/environment_properties": close({
		property_group!: matchN(1, [_#defs."/$defs/application_configuration/$defs/environment_properties/$defs/property_group", list.MaxItems(50) & [_, ...] & [..._#defs."/$defs/application_configuration/$defs/environment_properties/$defs/property_group"]])
	})

	_#defs: "/$defs/application_configuration/$defs/environment_properties/$defs/property_group": close({
		property_group_id!: string
		property_map!: [string]: string
	})

	_#defs: "/$defs/application_configuration/$defs/flink_application_configuration": close({
		checkpoint_configuration?: matchN(1, [_#defs."/$defs/application_configuration/$defs/flink_application_configuration/$defs/checkpoint_configuration", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/flink_application_configuration/$defs/checkpoint_configuration"]])
		monitoring_configuration?: matchN(1, [_#defs."/$defs/application_configuration/$defs/flink_application_configuration/$defs/monitoring_configuration", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/flink_application_configuration/$defs/monitoring_configuration"]])
		parallelism_configuration?: matchN(1, [_#defs."/$defs/application_configuration/$defs/flink_application_configuration/$defs/parallelism_configuration", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/flink_application_configuration/$defs/parallelism_configuration"]])
	})

	_#defs: "/$defs/application_configuration/$defs/flink_application_configuration/$defs/checkpoint_configuration": close({
		checkpoint_interval?:           number
		checkpointing_enabled?:         bool
		configuration_type!:            string
		min_pause_between_checkpoints?: number
	})

	_#defs: "/$defs/application_configuration/$defs/flink_application_configuration/$defs/monitoring_configuration": close({
		configuration_type!: string
		log_level?:          string
		metrics_level?:      string
	})

	_#defs: "/$defs/application_configuration/$defs/flink_application_configuration/$defs/parallelism_configuration": close({
		auto_scaling_enabled?: bool
		configuration_type!:   string
		parallelism?:          number
		parallelism_per_kpu?:  number
	})

	_#defs: "/$defs/application_configuration/$defs/run_configuration": close({
		application_restore_configuration?: matchN(1, [_#defs."/$defs/application_configuration/$defs/run_configuration/$defs/application_restore_configuration", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/run_configuration/$defs/application_restore_configuration"]])
		flink_run_configuration?: matchN(1, [_#defs."/$defs/application_configuration/$defs/run_configuration/$defs/flink_run_configuration", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/run_configuration/$defs/flink_run_configuration"]])
	})

	_#defs: "/$defs/application_configuration/$defs/run_configuration/$defs/application_restore_configuration": close({
		application_restore_type?: string
		snapshot_name?:            string
	})

	_#defs: "/$defs/application_configuration/$defs/run_configuration/$defs/flink_run_configuration": close({
		allow_non_restored_state?: bool
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration": close({
		input?: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input"]])
		output?: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/output", list.MaxItems(3) & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/output"]])
		reference_data_source?: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source"]])
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/input": close({
		input_parallelism?: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_parallelism", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_parallelism"]])
		input_processing_configuration?: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_processing_configuration", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_processing_configuration"]])
		in_app_stream_names?: [...string]
		input_id?:    string
		name_prefix!: string
		input_schema!: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_schema", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_schema"]])
		input_starting_position_configuration?: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_starting_position_configuration", [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_starting_position_configuration"]])
		kinesis_firehose_input?: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/kinesis_firehose_input", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/kinesis_firehose_input"]])
		kinesis_streams_input?: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/kinesis_streams_input", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/kinesis_streams_input"]])
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_parallelism": close({
		count?: number
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_processing_configuration": close({
		input_lambda_processor!: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_processing_configuration/$defs/input_lambda_processor", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_processing_configuration/$defs/input_lambda_processor"]])
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_processing_configuration/$defs/input_lambda_processor": close({
		resource_arn!: string
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_schema": close({
		record_column!: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_schema/$defs/record_column", list.MaxItems(1000) & [_, ...] & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_schema/$defs/record_column"]])
		record_format!: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_schema/$defs/record_format", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_schema/$defs/record_format"]])
		record_encoding?: string
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_schema/$defs/record_column": close({
		mapping?:  string
		name!:     string
		sql_type!: string
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_schema/$defs/record_format": close({
		mapping_parameters!: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_schema/$defs/record_format/$defs/mapping_parameters", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_schema/$defs/record_format/$defs/mapping_parameters"]])
		record_format_type!: string
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_schema/$defs/record_format/$defs/mapping_parameters": close({
		csv_mapping_parameters?: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_schema/$defs/record_format/$defs/mapping_parameters/$defs/csv_mapping_parameters", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_schema/$defs/record_format/$defs/mapping_parameters/$defs/csv_mapping_parameters"]])
		json_mapping_parameters?: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_schema/$defs/record_format/$defs/mapping_parameters/$defs/json_mapping_parameters", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_schema/$defs/record_format/$defs/mapping_parameters/$defs/json_mapping_parameters"]])
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_schema/$defs/record_format/$defs/mapping_parameters/$defs/csv_mapping_parameters": close({
		record_column_delimiter!: string
		record_row_delimiter!:    string
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_schema/$defs/record_format/$defs/mapping_parameters/$defs/json_mapping_parameters": close({
		record_row_path!: string
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/input_starting_position_configuration": close({
		input_starting_position?: string
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/kinesis_firehose_input": close({
		resource_arn!: string
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/input/$defs/kinesis_streams_input": close({
		resource_arn!: string
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/output": close({
		destination_schema!: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/output/$defs/destination_schema", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/output/$defs/destination_schema"]])
		kinesis_firehose_output?: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/output/$defs/kinesis_firehose_output", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/output/$defs/kinesis_firehose_output"]])
		kinesis_streams_output?: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/output/$defs/kinesis_streams_output", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/output/$defs/kinesis_streams_output"]])
		lambda_output?: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/output/$defs/lambda_output", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/output/$defs/lambda_output"]])
		name!:      string
		output_id?: string
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/output/$defs/destination_schema": close({
		record_format_type!: string
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/output/$defs/kinesis_firehose_output": close({
		resource_arn!: string
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/output/$defs/kinesis_streams_output": close({
		resource_arn!: string
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/output/$defs/lambda_output": close({
		resource_arn!: string
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source": close({
		reference_schema!: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source/$defs/reference_schema", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source/$defs/reference_schema"]])
		s3_reference_data_source!: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source/$defs/s3_reference_data_source", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source/$defs/s3_reference_data_source"]])
		reference_id?: string
		table_name!:   string
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source/$defs/reference_schema": close({
		record_column!: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source/$defs/reference_schema/$defs/record_column", list.MaxItems(1000) & [_, ...] & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source/$defs/reference_schema/$defs/record_column"]])
		record_format!: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source/$defs/reference_schema/$defs/record_format", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source/$defs/reference_schema/$defs/record_format"]])
		record_encoding?: string
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source/$defs/reference_schema/$defs/record_column": close({
		mapping?:  string
		name!:     string
		sql_type!: string
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source/$defs/reference_schema/$defs/record_format": close({
		mapping_parameters!: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source/$defs/reference_schema/$defs/record_format/$defs/mapping_parameters", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source/$defs/reference_schema/$defs/record_format/$defs/mapping_parameters"]])
		record_format_type!: string
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source/$defs/reference_schema/$defs/record_format/$defs/mapping_parameters": close({
		csv_mapping_parameters?: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source/$defs/reference_schema/$defs/record_format/$defs/mapping_parameters/$defs/csv_mapping_parameters", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source/$defs/reference_schema/$defs/record_format/$defs/mapping_parameters/$defs/csv_mapping_parameters"]])
		json_mapping_parameters?: matchN(1, [_#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source/$defs/reference_schema/$defs/record_format/$defs/mapping_parameters/$defs/json_mapping_parameters", list.MaxItems(1) & [..._#defs."/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source/$defs/reference_schema/$defs/record_format/$defs/mapping_parameters/$defs/json_mapping_parameters"]])
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source/$defs/reference_schema/$defs/record_format/$defs/mapping_parameters/$defs/csv_mapping_parameters": close({
		record_column_delimiter!: string
		record_row_delimiter!:    string
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source/$defs/reference_schema/$defs/record_format/$defs/mapping_parameters/$defs/json_mapping_parameters": close({
		record_row_path!: string
	})

	_#defs: "/$defs/application_configuration/$defs/sql_application_configuration/$defs/reference_data_source/$defs/s3_reference_data_source": close({
		bucket_arn!: string
		file_key!:   string
	})

	_#defs: "/$defs/application_configuration/$defs/vpc_configuration": close({
		security_group_ids!: [...string]
		subnet_ids!: [...string]
		vpc_configuration_id?: string
		vpc_id?:               string
	})
}
