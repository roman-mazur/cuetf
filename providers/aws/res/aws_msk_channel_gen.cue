package res

aws_msk_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_msk_channel")
	close({
		encryption_configuration?: matchN(1, [#encryption_configuration, [...#encryption_configuration]])
		iceberg_destination?: matchN(1, [#iceberg_destination, [...#iceberg_destination]])
		logging_info?: matchN(1, [#logging_info, [...#logging_info]])
		s3_destination?: matchN(1, [#s3_destination, [...#s3_destination]])
		timeouts?: #timeouts
		topic_configuration?: matchN(1, [#topic_configuration, [...#topic_configuration]])
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:           string
		channel_name!:     string
		cluster_arn!:      string
		destination_type?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#encryption_configuration: close({
		kms_key_arn!: string
	})

	#iceberg_destination: close({
		catalog?: matchN(1, [_#defs."/$defs/iceberg_destination/$defs/catalog", [..._#defs."/$defs/iceberg_destination/$defs/catalog"]])
		dead_letter_queue_s3?: matchN(1, [_#defs."/$defs/iceberg_destination/$defs/dead_letter_queue_s3", [..._#defs."/$defs/iceberg_destination/$defs/dead_letter_queue_s3"]])
		destination_table?: matchN(1, [_#defs."/$defs/iceberg_destination/$defs/destination_table", [..._#defs."/$defs/iceberg_destination/$defs/destination_table"]])
		schema_evolution?: matchN(1, [_#defs."/$defs/iceberg_destination/$defs/schema_evolution", [..._#defs."/$defs/iceberg_destination/$defs/schema_evolution"]])
		table_creation?: matchN(1, [_#defs."/$defs/iceberg_destination/$defs/table_creation", [..._#defs."/$defs/iceberg_destination/$defs/table_creation"]])
		append_only!:                bool
		compression_type?:           string
		data_freshness_in_seconds?:  number
		service_execution_role_arn!: string
	})

	#logging_info: close({
		cloudwatch_logs?: matchN(1, [_#defs."/$defs/logging_info/$defs/cloudwatch_logs", [..._#defs."/$defs/logging_info/$defs/cloudwatch_logs"]])
		firehose?: matchN(1, [_#defs."/$defs/logging_info/$defs/firehose", [..._#defs."/$defs/logging_info/$defs/firehose"]])
		s3?: matchN(1, [_#defs."/$defs/logging_info/$defs/s3", [..._#defs."/$defs/logging_info/$defs/s3"]])
	})

	#s3_destination: close({
		dead_letter_queue_s3?: matchN(1, [_#defs."/$defs/s3_destination/$defs/dead_letter_queue_s3", [..._#defs."/$defs/s3_destination/$defs/dead_letter_queue_s3"]])
		storage?: matchN(1, [_#defs."/$defs/s3_destination/$defs/storage", [..._#defs."/$defs/s3_destination/$defs/storage"]])
		data_freshness_in_seconds?:  number
		service_execution_role_arn!: string
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

	#topic_configuration: close({
		record_converter?: matchN(1, [_#defs."/$defs/topic_configuration/$defs/record_converter", [..._#defs."/$defs/topic_configuration/$defs/record_converter"]])
		record_schema?: matchN(1, [_#defs."/$defs/topic_configuration/$defs/record_schema", [..._#defs."/$defs/topic_configuration/$defs/record_schema"]])
		topic_arn!: string
	})

	_#defs: "/$defs/iceberg_destination/$defs/catalog": close({
		catalog_arn?:        string
		warehouse_location?: string
	})

	_#defs: "/$defs/iceberg_destination/$defs/dead_letter_queue_s3": close({
		bucket_arn!:            string
		error_output_prefix?:   string
		expected_bucket_owner?: string
	})

	_#defs: "/$defs/iceberg_destination/$defs/destination_table": close({
		partition_spec?: matchN(1, [_#defs."/$defs/iceberg_destination/$defs/destination_table/$defs/partition_spec", [..._#defs."/$defs/iceberg_destination/$defs/destination_table/$defs/partition_spec"]])
		destination_database_name?: string
		destination_table_name?:    string
	})

	_#defs: "/$defs/iceberg_destination/$defs/destination_table/$defs/partition_spec": close({
		source?: matchN(1, [_#defs."/$defs/iceberg_destination/$defs/destination_table/$defs/partition_spec/$defs/source", [..._#defs."/$defs/iceberg_destination/$defs/destination_table/$defs/partition_spec/$defs/source"]])
		partition_strategy!: string
	})

	_#defs: "/$defs/iceberg_destination/$defs/destination_table/$defs/partition_spec/$defs/source": close({
		source_name?: string
	})

	_#defs: "/$defs/iceberg_destination/$defs/schema_evolution": close({
		enable_schema_evolution?: bool
	})

	_#defs: "/$defs/iceberg_destination/$defs/table_creation": close({
		enable_table_creation?: bool
	})

	_#defs: "/$defs/logging_info/$defs/cloudwatch_logs": close({
		enabled!:   bool
		log_group?: string
	})

	_#defs: "/$defs/logging_info/$defs/firehose": close({
		delivery_stream?: string
		enabled!:         bool
	})

	_#defs: "/$defs/logging_info/$defs/s3": close({
		bucket?:  string
		enabled!: bool
		prefix?:  string
	})

	_#defs: "/$defs/s3_destination/$defs/dead_letter_queue_s3": close({
		bucket_arn!:            string
		error_output_prefix?:   string
		expected_bucket_owner?: string
	})

	_#defs: "/$defs/s3_destination/$defs/storage": close({
		bucket_arn!:            string
		compression_type!:      string
		expected_bucket_owner?: string
		output_key_template?:   string
		output_prefix?:         string
		storage_class!:         string
	})

	_#defs: "/$defs/topic_configuration/$defs/record_converter": close({
		value_converter!: string
	})

	_#defs: "/$defs/topic_configuration/$defs/record_schema": close({
		gsr_arn!: string
	})
}
