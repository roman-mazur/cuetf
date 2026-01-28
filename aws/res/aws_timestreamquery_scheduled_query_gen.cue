package res

#aws_timestreamquery_scheduled_query: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_timestreamquery_scheduled_query")
	close({
		arn?:                string
		creation_time?:      string
		execution_role_arn!: string
		kms_key_id?:         string
		name!:               string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		next_invocation_time?:     string
		previous_invocation_time?: string
		query_string!:             string
		state?:                    string
		error_report_configuration?: matchN(1, [#error_report_configuration, [...#error_report_configuration]])
		tags?: [string]:     string
		tags_all?: [string]: string
		last_run_summary?: matchN(1, [#last_run_summary, [...#last_run_summary]])
		notification_configuration?: matchN(1, [#notification_configuration, [...#notification_configuration]])
		recently_failed_runs?: matchN(1, [#recently_failed_runs, [...#recently_failed_runs]])
		schedule_configuration?: matchN(1, [#schedule_configuration, [...#schedule_configuration]])
		target_configuration?: matchN(1, [#target_configuration, [...#target_configuration]])
		timeouts?: #timeouts
	})

	#error_report_configuration: close({
		s3_configuration?: matchN(1, [_#defs."/$defs/error_report_configuration/$defs/s3_configuration", [..._#defs."/$defs/error_report_configuration/$defs/s3_configuration"]])
	})

	#last_run_summary: close({
		error_report_location?: matchN(1, [_#defs."/$defs/last_run_summary/$defs/error_report_location", [..._#defs."/$defs/last_run_summary/$defs/error_report_location"]])
		failure_reason?:  string
		invocation_time?: string
		run_status?:      string
		trigger_time?:    string
		execution_stats?: matchN(1, [_#defs."/$defs/last_run_summary/$defs/execution_stats", [..._#defs."/$defs/last_run_summary/$defs/execution_stats"]])
		query_insights_response?: matchN(1, [_#defs."/$defs/last_run_summary/$defs/query_insights_response", [..._#defs."/$defs/last_run_summary/$defs/query_insights_response"]])
	})

	#notification_configuration: close({
		sns_configuration?: matchN(1, [_#defs."/$defs/notification_configuration/$defs/sns_configuration", [..._#defs."/$defs/notification_configuration/$defs/sns_configuration"]])
	})

	#recently_failed_runs: close({
		error_report_location?: matchN(1, [_#defs."/$defs/recently_failed_runs/$defs/error_report_location", [..._#defs."/$defs/recently_failed_runs/$defs/error_report_location"]])
		failure_reason?:  string
		invocation_time?: string
		run_status?:      string
		trigger_time?:    string
		execution_stats?: matchN(1, [_#defs."/$defs/recently_failed_runs/$defs/execution_stats", [..._#defs."/$defs/recently_failed_runs/$defs/execution_stats"]])
		query_insights_response?: matchN(1, [_#defs."/$defs/recently_failed_runs/$defs/query_insights_response", [..._#defs."/$defs/recently_failed_runs/$defs/query_insights_response"]])
	})

	#schedule_configuration: close({
		schedule_expression!: string
	})

	#target_configuration: close({
		timestream_configuration?: matchN(1, [_#defs."/$defs/target_configuration/$defs/timestream_configuration", [..._#defs."/$defs/target_configuration/$defs/timestream_configuration"]])
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

	_#defs: "/$defs/error_report_configuration/$defs/s3_configuration": close({
		bucket_name!:       string
		encryption_option?: string
		object_key_prefix?: string
	})

	_#defs: "/$defs/last_run_summary/$defs/error_report_location": close({
		s3_report_location?: matchN(1, [_#defs."/$defs/last_run_summary/$defs/error_report_location/$defs/s3_report_location", [..._#defs."/$defs/last_run_summary/$defs/error_report_location/$defs/s3_report_location"]])
	})

	_#defs: "/$defs/last_run_summary/$defs/error_report_location/$defs/s3_report_location": close({
		bucket_name?: string
		object_key?:  string
	})

	_#defs: "/$defs/last_run_summary/$defs/execution_stats": close({
		bytes_metered?:            number
		cumulative_bytes_scanned?: number
		data_writes?:              number
		execution_time_in_millis?: number
		query_result_rows?:        number
		records_ingested?:         number
	})

	_#defs: "/$defs/last_run_summary/$defs/query_insights_response": close({
		query_spatial_coverage?: matchN(1, [_#defs."/$defs/last_run_summary/$defs/query_insights_response/$defs/query_spatial_coverage", [..._#defs."/$defs/last_run_summary/$defs/query_insights_response/$defs/query_spatial_coverage"]])
		query_temporal_range?: matchN(1, [_#defs."/$defs/last_run_summary/$defs/query_insights_response/$defs/query_temporal_range", [..._#defs."/$defs/last_run_summary/$defs/query_insights_response/$defs/query_temporal_range"]])
		output_bytes?:      number
		output_rows?:       number
		query_table_count?: number
	})

	_#defs: "/$defs/last_run_summary/$defs/query_insights_response/$defs/query_spatial_coverage": close({
		max?: matchN(1, [_#defs."/$defs/last_run_summary/$defs/query_insights_response/$defs/query_spatial_coverage/$defs/max", [..._#defs."/$defs/last_run_summary/$defs/query_insights_response/$defs/query_spatial_coverage/$defs/max"]])
	})

	_#defs: "/$defs/last_run_summary/$defs/query_insights_response/$defs/query_spatial_coverage/$defs/max": close({
		partition_key?: [...string]
		table_arn?: string
		value?:     number
	})

	_#defs: "/$defs/last_run_summary/$defs/query_insights_response/$defs/query_temporal_range": close({
		max?: matchN(1, [_#defs."/$defs/last_run_summary/$defs/query_insights_response/$defs/query_temporal_range/$defs/max", [..._#defs."/$defs/last_run_summary/$defs/query_insights_response/$defs/query_temporal_range/$defs/max"]])
	})

	_#defs: "/$defs/last_run_summary/$defs/query_insights_response/$defs/query_temporal_range/$defs/max": close({
		table_arn?: string
		value?:     number
	})

	_#defs: "/$defs/notification_configuration/$defs/sns_configuration": close({
		topic_arn!: string
	})

	_#defs: "/$defs/recently_failed_runs/$defs/error_report_location": close({
		s3_report_location?: matchN(1, [_#defs."/$defs/recently_failed_runs/$defs/error_report_location/$defs/s3_report_location", [..._#defs."/$defs/recently_failed_runs/$defs/error_report_location/$defs/s3_report_location"]])
	})

	_#defs: "/$defs/recently_failed_runs/$defs/error_report_location/$defs/s3_report_location": close({
		bucket_name?: string
		object_key?:  string
	})

	_#defs: "/$defs/recently_failed_runs/$defs/execution_stats": close({
		bytes_metered?:            number
		cumulative_bytes_scanned?: number
		data_writes?:              number
		execution_time_in_millis?: number
		query_result_rows?:        number
		records_ingested?:         number
	})

	_#defs: "/$defs/recently_failed_runs/$defs/query_insights_response": close({
		query_spatial_coverage?: matchN(1, [_#defs."/$defs/recently_failed_runs/$defs/query_insights_response/$defs/query_spatial_coverage", [..._#defs."/$defs/recently_failed_runs/$defs/query_insights_response/$defs/query_spatial_coverage"]])
		query_temporal_range?: matchN(1, [_#defs."/$defs/recently_failed_runs/$defs/query_insights_response/$defs/query_temporal_range", [..._#defs."/$defs/recently_failed_runs/$defs/query_insights_response/$defs/query_temporal_range"]])
		output_bytes?:      number
		output_rows?:       number
		query_table_count?: number
	})

	_#defs: "/$defs/recently_failed_runs/$defs/query_insights_response/$defs/query_spatial_coverage": close({
		max?: matchN(1, [_#defs."/$defs/recently_failed_runs/$defs/query_insights_response/$defs/query_spatial_coverage/$defs/max", [..._#defs."/$defs/recently_failed_runs/$defs/query_insights_response/$defs/query_spatial_coverage/$defs/max"]])
	})

	_#defs: "/$defs/recently_failed_runs/$defs/query_insights_response/$defs/query_spatial_coverage/$defs/max": close({
		partition_key?: [...string]
		table_arn?: string
		value?:     number
	})

	_#defs: "/$defs/recently_failed_runs/$defs/query_insights_response/$defs/query_temporal_range": close({
		max?: matchN(1, [_#defs."/$defs/recently_failed_runs/$defs/query_insights_response/$defs/query_temporal_range/$defs/max", [..._#defs."/$defs/recently_failed_runs/$defs/query_insights_response/$defs/query_temporal_range/$defs/max"]])
	})

	_#defs: "/$defs/recently_failed_runs/$defs/query_insights_response/$defs/query_temporal_range/$defs/max": close({
		table_arn?: string
		value?:     number
	})

	_#defs: "/$defs/target_configuration/$defs/timestream_configuration": close({
		dimension_mapping?: matchN(1, [_#defs."/$defs/target_configuration/$defs/timestream_configuration/$defs/dimension_mapping", [..._#defs."/$defs/target_configuration/$defs/timestream_configuration/$defs/dimension_mapping"]])
		database_name!:       string
		measure_name_column?: string
		table_name!:          string
		time_column!:         string
		mixed_measure_mapping?: matchN(1, [_#defs."/$defs/target_configuration/$defs/timestream_configuration/$defs/mixed_measure_mapping", [..._#defs."/$defs/target_configuration/$defs/timestream_configuration/$defs/mixed_measure_mapping"]])
		multi_measure_mappings?: matchN(1, [_#defs."/$defs/target_configuration/$defs/timestream_configuration/$defs/multi_measure_mappings", [..._#defs."/$defs/target_configuration/$defs/timestream_configuration/$defs/multi_measure_mappings"]])
	})

	_#defs: "/$defs/target_configuration/$defs/timestream_configuration/$defs/dimension_mapping": close({
		dimension_value_type!: string
		name!:                 string
	})

	_#defs: "/$defs/target_configuration/$defs/timestream_configuration/$defs/mixed_measure_mapping": close({
		multi_measure_attribute_mapping?: matchN(1, [_#defs."/$defs/target_configuration/$defs/timestream_configuration/$defs/mixed_measure_mapping/$defs/multi_measure_attribute_mapping", [..._#defs."/$defs/target_configuration/$defs/timestream_configuration/$defs/mixed_measure_mapping/$defs/multi_measure_attribute_mapping"]])
		measure_name?:        string
		measure_value_type!:  string
		source_column?:       string
		target_measure_name?: string
	})

	_#defs: "/$defs/target_configuration/$defs/timestream_configuration/$defs/mixed_measure_mapping/$defs/multi_measure_attribute_mapping": close({
		measure_value_type!:                  string
		source_column!:                       string
		target_multi_measure_attribute_name?: string
	})

	_#defs: "/$defs/target_configuration/$defs/timestream_configuration/$defs/multi_measure_mappings": close({
		multi_measure_attribute_mapping?: matchN(1, [_#defs."/$defs/target_configuration/$defs/timestream_configuration/$defs/multi_measure_mappings/$defs/multi_measure_attribute_mapping", [..._#defs."/$defs/target_configuration/$defs/timestream_configuration/$defs/multi_measure_mappings/$defs/multi_measure_attribute_mapping"]])
		target_multi_measure_name?: string
	})

	_#defs: "/$defs/target_configuration/$defs/timestream_configuration/$defs/multi_measure_mappings/$defs/multi_measure_attribute_mapping": close({
		measure_value_type!:                  string
		source_column!:                       string
		target_multi_measure_attribute_name?: string
	})
}
