package res

import "list"

#aws_kinesis_analytics_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kinesis_analytics_application")
	close({
		arn?:                   string
		code?:                  string
		create_timestamp?:      string
		description?:           string
		id?:                    string
		last_update_timestamp?: string
		name!:                  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		start_application?: bool
		cloudwatch_logging_options?: matchN(1, [#cloudwatch_logging_options, list.MaxItems(1) & [...#cloudwatch_logging_options]])
		inputs?: matchN(1, [#inputs, list.MaxItems(1) & [...#inputs]])
		status?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		version?: number
		outputs?: matchN(1, [#outputs, list.MaxItems(3) & [...#outputs]])
		reference_data_sources?: matchN(1, [#reference_data_sources, list.MaxItems(1) & [...#reference_data_sources]])
	})

	#cloudwatch_logging_options: close({
		id?:             string
		log_stream_arn!: string
		role_arn!:       string
	})

	#inputs: close({
		kinesis_firehose?: matchN(1, [_#defs."/$defs/inputs/$defs/kinesis_firehose", list.MaxItems(1) & [..._#defs."/$defs/inputs/$defs/kinesis_firehose"]])
		kinesis_stream?: matchN(1, [_#defs."/$defs/inputs/$defs/kinesis_stream", list.MaxItems(1) & [..._#defs."/$defs/inputs/$defs/kinesis_stream"]])
		id?:          string
		name_prefix!: string
		stream_names?: [...string]
		parallelism?: matchN(1, [_#defs."/$defs/inputs/$defs/parallelism", list.MaxItems(1) & [..._#defs."/$defs/inputs/$defs/parallelism"]])
		processing_configuration?: matchN(1, [_#defs."/$defs/inputs/$defs/processing_configuration", list.MaxItems(1) & [..._#defs."/$defs/inputs/$defs/processing_configuration"]])
		schema?: matchN(1, [_#defs."/$defs/inputs/$defs/schema", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/inputs/$defs/schema"]])
		starting_position_configuration?: matchN(1, [_#defs."/$defs/inputs/$defs/starting_position_configuration", [..._#defs."/$defs/inputs/$defs/starting_position_configuration"]])
	})

	#outputs: close({
		kinesis_firehose?: matchN(1, [_#defs."/$defs/outputs/$defs/kinesis_firehose", list.MaxItems(1) & [..._#defs."/$defs/outputs/$defs/kinesis_firehose"]])
		kinesis_stream?: matchN(1, [_#defs."/$defs/outputs/$defs/kinesis_stream", list.MaxItems(1) & [..._#defs."/$defs/outputs/$defs/kinesis_stream"]])
		lambda?: matchN(1, [_#defs."/$defs/outputs/$defs/lambda", list.MaxItems(1) & [..._#defs."/$defs/outputs/$defs/lambda"]])
		schema?: matchN(1, [_#defs."/$defs/outputs/$defs/schema", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/outputs/$defs/schema"]])
		id?:   string
		name!: string
	})

	#reference_data_sources: close({
		s3?: matchN(1, [_#defs."/$defs/reference_data_sources/$defs/s3", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/reference_data_sources/$defs/s3"]])
		schema?: matchN(1, [_#defs."/$defs/reference_data_sources/$defs/schema", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/reference_data_sources/$defs/schema"]])
		id?:         string
		table_name!: string
	})

	_#defs: "/$defs/inputs/$defs/kinesis_firehose": close({
		resource_arn!: string
		role_arn!:     string
	})

	_#defs: "/$defs/inputs/$defs/kinesis_stream": close({
		resource_arn!: string
		role_arn!:     string
	})

	_#defs: "/$defs/inputs/$defs/parallelism": close({
		count?: number
	})

	_#defs: "/$defs/inputs/$defs/processing_configuration": close({
		lambda?: matchN(1, [_#defs."/$defs/inputs/$defs/processing_configuration/$defs/lambda", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/inputs/$defs/processing_configuration/$defs/lambda"]])
	})

	_#defs: "/$defs/inputs/$defs/processing_configuration/$defs/lambda": close({
		resource_arn!: string
		role_arn!:     string
	})

	_#defs: "/$defs/inputs/$defs/schema": close({
		record_columns?: matchN(1, [_#defs."/$defs/inputs/$defs/schema/$defs/record_columns", list.MaxItems(1000) & [_, ...] & [..._#defs."/$defs/inputs/$defs/schema/$defs/record_columns"]])
		record_format?: matchN(1, [_#defs."/$defs/inputs/$defs/schema/$defs/record_format", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/inputs/$defs/schema/$defs/record_format"]])
		record_encoding?: string
	})

	_#defs: "/$defs/inputs/$defs/schema/$defs/record_columns": close({
		mapping?:  string
		name!:     string
		sql_type!: string
	})

	_#defs: "/$defs/inputs/$defs/schema/$defs/record_format": close({
		mapping_parameters?: matchN(1, [_#defs."/$defs/inputs/$defs/schema/$defs/record_format/$defs/mapping_parameters", list.MaxItems(1) & [..._#defs."/$defs/inputs/$defs/schema/$defs/record_format/$defs/mapping_parameters"]])
		record_format_type?: string
	})

	_#defs: "/$defs/inputs/$defs/schema/$defs/record_format/$defs/mapping_parameters": close({
		csv?: matchN(1, [_#defs."/$defs/inputs/$defs/schema/$defs/record_format/$defs/mapping_parameters/$defs/csv", list.MaxItems(1) & [..._#defs."/$defs/inputs/$defs/schema/$defs/record_format/$defs/mapping_parameters/$defs/csv"]])
		json?: matchN(1, [_#defs."/$defs/inputs/$defs/schema/$defs/record_format/$defs/mapping_parameters/$defs/json", list.MaxItems(1) & [..._#defs."/$defs/inputs/$defs/schema/$defs/record_format/$defs/mapping_parameters/$defs/json"]])
	})

	_#defs: "/$defs/inputs/$defs/schema/$defs/record_format/$defs/mapping_parameters/$defs/csv": close({
		record_column_delimiter!: string
		record_row_delimiter!:    string
	})

	_#defs: "/$defs/inputs/$defs/schema/$defs/record_format/$defs/mapping_parameters/$defs/json": close({
		record_row_path!: string
	})

	_#defs: "/$defs/inputs/$defs/starting_position_configuration": close({
		starting_position?: string
	})

	_#defs: "/$defs/outputs/$defs/kinesis_firehose": close({
		resource_arn!: string
		role_arn!:     string
	})

	_#defs: "/$defs/outputs/$defs/kinesis_stream": close({
		resource_arn!: string
		role_arn!:     string
	})

	_#defs: "/$defs/outputs/$defs/lambda": close({
		resource_arn!: string
		role_arn!:     string
	})

	_#defs: "/$defs/outputs/$defs/schema": close({
		record_format_type!: string
	})

	_#defs: "/$defs/reference_data_sources/$defs/s3": close({
		bucket_arn!: string
		file_key!:   string
		role_arn!:   string
	})

	_#defs: "/$defs/reference_data_sources/$defs/schema": close({
		record_columns?: matchN(1, [_#defs."/$defs/reference_data_sources/$defs/schema/$defs/record_columns", list.MaxItems(1000) & [_, ...] & [..._#defs."/$defs/reference_data_sources/$defs/schema/$defs/record_columns"]])
		record_format?: matchN(1, [_#defs."/$defs/reference_data_sources/$defs/schema/$defs/record_format", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/reference_data_sources/$defs/schema/$defs/record_format"]])
		record_encoding?: string
	})

	_#defs: "/$defs/reference_data_sources/$defs/schema/$defs/record_columns": close({
		mapping?:  string
		name!:     string
		sql_type!: string
	})

	_#defs: "/$defs/reference_data_sources/$defs/schema/$defs/record_format": close({
		mapping_parameters?: matchN(1, [_#defs."/$defs/reference_data_sources/$defs/schema/$defs/record_format/$defs/mapping_parameters", list.MaxItems(1) & [..._#defs."/$defs/reference_data_sources/$defs/schema/$defs/record_format/$defs/mapping_parameters"]])
		record_format_type?: string
	})

	_#defs: "/$defs/reference_data_sources/$defs/schema/$defs/record_format/$defs/mapping_parameters": close({
		csv?: matchN(1, [_#defs."/$defs/reference_data_sources/$defs/schema/$defs/record_format/$defs/mapping_parameters/$defs/csv", list.MaxItems(1) & [..._#defs."/$defs/reference_data_sources/$defs/schema/$defs/record_format/$defs/mapping_parameters/$defs/csv"]])
		json?: matchN(1, [_#defs."/$defs/reference_data_sources/$defs/schema/$defs/record_format/$defs/mapping_parameters/$defs/json", list.MaxItems(1) & [..._#defs."/$defs/reference_data_sources/$defs/schema/$defs/record_format/$defs/mapping_parameters/$defs/json"]])
	})

	_#defs: "/$defs/reference_data_sources/$defs/schema/$defs/record_format/$defs/mapping_parameters/$defs/csv": close({
		record_column_delimiter!: string
		record_row_delimiter!:    string
	})

	_#defs: "/$defs/reference_data_sources/$defs/schema/$defs/record_format/$defs/mapping_parameters/$defs/json": close({
		record_row_path!: string
	})
}
