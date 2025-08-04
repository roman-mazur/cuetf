package res

import "list"

#aws_kinesis_firehose_delivery_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kinesis_firehose_delivery_stream")
	close({
		elasticsearch_configuration?: matchN(1, [#elasticsearch_configuration, list.MaxItems(1) & [...#elasticsearch_configuration]])
		arn?:            string
		destination!:    string
		destination_id?: string
		id?:             string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		name!:   string
		tags?: [string]:     string
		tags_all?: [string]: string
		version_id?: string
		extended_s3_configuration?: matchN(1, [#extended_s3_configuration, list.MaxItems(1) & [...#extended_s3_configuration]])
		http_endpoint_configuration?: matchN(1, [#http_endpoint_configuration, list.MaxItems(1) & [...#http_endpoint_configuration]])
		iceberg_configuration?: matchN(1, [#iceberg_configuration, list.MaxItems(1) & [...#iceberg_configuration]])
		kinesis_source_configuration?: matchN(1, [#kinesis_source_configuration, list.MaxItems(1) & [...#kinesis_source_configuration]])
		msk_source_configuration?: matchN(1, [#msk_source_configuration, list.MaxItems(1) & [...#msk_source_configuration]])
		opensearch_configuration?: matchN(1, [#opensearch_configuration, list.MaxItems(1) & [...#opensearch_configuration]])
		opensearchserverless_configuration?: matchN(1, [#opensearchserverless_configuration, list.MaxItems(1) & [...#opensearchserverless_configuration]])
		redshift_configuration?: matchN(1, [#redshift_configuration, list.MaxItems(1) & [...#redshift_configuration]])
		server_side_encryption?: matchN(1, [#server_side_encryption, list.MaxItems(1) & [...#server_side_encryption]])
		snowflake_configuration?: matchN(1, [#snowflake_configuration, list.MaxItems(1) & [...#snowflake_configuration]])
		splunk_configuration?: matchN(1, [#splunk_configuration, list.MaxItems(1) & [...#splunk_configuration]])
		timeouts?: #timeouts
	})

	#elasticsearch_configuration: close({
		buffering_interval?:    number
		buffering_size?:        number
		cluster_endpoint?:      string
		domain_arn?:            string
		index_name!:            string
		index_rotation_period?: string
		cloudwatch_logging_options?: matchN(1, [_#defs."/$defs/elasticsearch_configuration/$defs/cloudwatch_logging_options", list.MaxItems(1) & [..._#defs."/$defs/elasticsearch_configuration/$defs/cloudwatch_logging_options"]])
		processing_configuration?: matchN(1, [_#defs."/$defs/elasticsearch_configuration/$defs/processing_configuration", list.MaxItems(1) & [..._#defs."/$defs/elasticsearch_configuration/$defs/processing_configuration"]])
		s3_configuration?: matchN(1, [_#defs."/$defs/elasticsearch_configuration/$defs/s3_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/elasticsearch_configuration/$defs/s3_configuration"]])
		retry_duration?: number
		role_arn!:       string
		s3_backup_mode?: string
		type_name?:      string
		vpc_config?: matchN(1, [_#defs."/$defs/elasticsearch_configuration/$defs/vpc_config", list.MaxItems(1) & [..._#defs."/$defs/elasticsearch_configuration/$defs/vpc_config"]])
	})

	#extended_s3_configuration: close({
		bucket_arn!: string
		cloudwatch_logging_options?: matchN(1, [_#defs."/$defs/extended_s3_configuration/$defs/cloudwatch_logging_options", list.MaxItems(1) & [..._#defs."/$defs/extended_s3_configuration/$defs/cloudwatch_logging_options"]])
		buffering_interval?:  number
		buffering_size?:      number
		compression_format?:  string
		custom_time_zone?:    string
		error_output_prefix?: string
		file_extension?:      string
		kms_key_arn?:         string
		data_format_conversion_configuration?: matchN(1, [_#defs."/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration", list.MaxItems(1) & [..._#defs."/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration"]])
		dynamic_partitioning_configuration?: matchN(1, [_#defs."/$defs/extended_s3_configuration/$defs/dynamic_partitioning_configuration", list.MaxItems(1) & [..._#defs."/$defs/extended_s3_configuration/$defs/dynamic_partitioning_configuration"]])
		prefix?: string
		processing_configuration?: matchN(1, [_#defs."/$defs/extended_s3_configuration/$defs/processing_configuration", list.MaxItems(1) & [..._#defs."/$defs/extended_s3_configuration/$defs/processing_configuration"]])
		s3_backup_configuration?: matchN(1, [_#defs."/$defs/extended_s3_configuration/$defs/s3_backup_configuration", list.MaxItems(1) & [..._#defs."/$defs/extended_s3_configuration/$defs/s3_backup_configuration"]])
		role_arn!:       string
		s3_backup_mode?: string
	})

	#http_endpoint_configuration: close({
		access_key?: string
		cloudwatch_logging_options?: matchN(1, [_#defs."/$defs/http_endpoint_configuration/$defs/cloudwatch_logging_options", list.MaxItems(1) & [..._#defs."/$defs/http_endpoint_configuration/$defs/cloudwatch_logging_options"]])
		buffering_interval?: number
		buffering_size?:     number
		name?:               string
		retry_duration?:     number
		processing_configuration?: matchN(1, [_#defs."/$defs/http_endpoint_configuration/$defs/processing_configuration", list.MaxItems(1) & [..._#defs."/$defs/http_endpoint_configuration/$defs/processing_configuration"]])
		role_arn?:       string
		s3_backup_mode?: string
		request_configuration?: matchN(1, [_#defs."/$defs/http_endpoint_configuration/$defs/request_configuration", list.MaxItems(1) & [..._#defs."/$defs/http_endpoint_configuration/$defs/request_configuration"]])
		s3_configuration?: matchN(1, [_#defs."/$defs/http_endpoint_configuration/$defs/s3_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/http_endpoint_configuration/$defs/s3_configuration"]])
		secrets_manager_configuration?: matchN(1, [_#defs."/$defs/http_endpoint_configuration/$defs/secrets_manager_configuration", list.MaxItems(1) & [..._#defs."/$defs/http_endpoint_configuration/$defs/secrets_manager_configuration"]])
		url!: string
	})

	#iceberg_configuration: close({
		cloudwatch_logging_options?: matchN(1, [_#defs."/$defs/iceberg_configuration/$defs/cloudwatch_logging_options", list.MaxItems(1) & [..._#defs."/$defs/iceberg_configuration/$defs/cloudwatch_logging_options"]])
		buffering_interval?: number
		buffering_size?:     number
		catalog_arn!:        string
		retry_duration?:     number
		role_arn!:           string
		s3_backup_mode?:     string
		destination_table_configuration?: matchN(1, [_#defs."/$defs/iceberg_configuration/$defs/destination_table_configuration", [..._#defs."/$defs/iceberg_configuration/$defs/destination_table_configuration"]])
		processing_configuration?: matchN(1, [_#defs."/$defs/iceberg_configuration/$defs/processing_configuration", list.MaxItems(1) & [..._#defs."/$defs/iceberg_configuration/$defs/processing_configuration"]])
		s3_configuration?: matchN(1, [_#defs."/$defs/iceberg_configuration/$defs/s3_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/iceberg_configuration/$defs/s3_configuration"]])
	})

	#kinesis_source_configuration: close({
		kinesis_stream_arn!: string
		role_arn!:           string
	})

	#msk_source_configuration: close({
		authentication_configuration?: matchN(1, [_#defs."/$defs/msk_source_configuration/$defs/authentication_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/msk_source_configuration/$defs/authentication_configuration"]])
		msk_cluster_arn!:     string
		read_from_timestamp?: string
		topic_name!:          string
	})

	#opensearch_configuration: close({
		buffering_interval?: number
		buffering_size?:     number
		cluster_endpoint?:   string
		domain_arn?:         string
		cloudwatch_logging_options?: matchN(1, [_#defs."/$defs/opensearch_configuration/$defs/cloudwatch_logging_options", list.MaxItems(1) & [..._#defs."/$defs/opensearch_configuration/$defs/cloudwatch_logging_options"]])
		index_name!:            string
		index_rotation_period?: string
		document_id_options?: matchN(1, [_#defs."/$defs/opensearch_configuration/$defs/document_id_options", list.MaxItems(1) & [..._#defs."/$defs/opensearch_configuration/$defs/document_id_options"]])
		retry_duration?: number
		role_arn!:       string
		s3_backup_mode?: string
		processing_configuration?: matchN(1, [_#defs."/$defs/opensearch_configuration/$defs/processing_configuration", list.MaxItems(1) & [..._#defs."/$defs/opensearch_configuration/$defs/processing_configuration"]])
		s3_configuration?: matchN(1, [_#defs."/$defs/opensearch_configuration/$defs/s3_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/opensearch_configuration/$defs/s3_configuration"]])
		type_name?: string
		vpc_config?: matchN(1, [_#defs."/$defs/opensearch_configuration/$defs/vpc_config", list.MaxItems(1) & [..._#defs."/$defs/opensearch_configuration/$defs/vpc_config"]])
	})

	#opensearchserverless_configuration: close({
		buffering_interval?:  number
		buffering_size?:      number
		collection_endpoint!: string
		index_name!:          string
		retry_duration?:      number
		role_arn!:            string
		cloudwatch_logging_options?: matchN(1, [_#defs."/$defs/opensearchserverless_configuration/$defs/cloudwatch_logging_options", list.MaxItems(1) & [..._#defs."/$defs/opensearchserverless_configuration/$defs/cloudwatch_logging_options"]])
		s3_backup_mode?: string
		processing_configuration?: matchN(1, [_#defs."/$defs/opensearchserverless_configuration/$defs/processing_configuration", list.MaxItems(1) & [..._#defs."/$defs/opensearchserverless_configuration/$defs/processing_configuration"]])
		s3_configuration?: matchN(1, [_#defs."/$defs/opensearchserverless_configuration/$defs/s3_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/opensearchserverless_configuration/$defs/s3_configuration"]])
		vpc_config?: matchN(1, [_#defs."/$defs/opensearchserverless_configuration/$defs/vpc_config", list.MaxItems(1) & [..._#defs."/$defs/opensearchserverless_configuration/$defs/vpc_config"]])
	})

	#redshift_configuration: close({
		cluster_jdbcurl!:    string
		copy_options?:       string
		data_table_columns?: string
		data_table_name!:    string
		password?:           string
		cloudwatch_logging_options?: matchN(1, [_#defs."/$defs/redshift_configuration/$defs/cloudwatch_logging_options", list.MaxItems(1) & [..._#defs."/$defs/redshift_configuration/$defs/cloudwatch_logging_options"]])
		retry_duration?: number
		role_arn!:       string
		processing_configuration?: matchN(1, [_#defs."/$defs/redshift_configuration/$defs/processing_configuration", list.MaxItems(1) & [..._#defs."/$defs/redshift_configuration/$defs/processing_configuration"]])
		s3_backup_configuration?: matchN(1, [_#defs."/$defs/redshift_configuration/$defs/s3_backup_configuration", list.MaxItems(1) & [..._#defs."/$defs/redshift_configuration/$defs/s3_backup_configuration"]])
		s3_backup_mode?: string
		s3_configuration?: matchN(1, [_#defs."/$defs/redshift_configuration/$defs/s3_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/redshift_configuration/$defs/s3_configuration"]])
		secrets_manager_configuration?: matchN(1, [_#defs."/$defs/redshift_configuration/$defs/secrets_manager_configuration", list.MaxItems(1) & [..._#defs."/$defs/redshift_configuration/$defs/secrets_manager_configuration"]])
		username?: string
	})

	#server_side_encryption: close({
		enabled?:  bool
		key_arn?:  string
		key_type?: string
	})

	#snowflake_configuration: close({
		account_url!:          string
		buffering_interval?:   number
		buffering_size?:       number
		content_column_name?:  string
		data_loading_option?:  string
		database!:             string
		key_passphrase?:       string
		metadata_column_name?: string
		private_key?:          string
		retry_duration?:       number
		cloudwatch_logging_options?: matchN(1, [_#defs."/$defs/snowflake_configuration/$defs/cloudwatch_logging_options", list.MaxItems(1) & [..._#defs."/$defs/snowflake_configuration/$defs/cloudwatch_logging_options"]])
		processing_configuration?: matchN(1, [_#defs."/$defs/snowflake_configuration/$defs/processing_configuration", list.MaxItems(1) & [..._#defs."/$defs/snowflake_configuration/$defs/processing_configuration"]])
		role_arn!:       string
		s3_backup_mode?: string
		s3_configuration?: matchN(1, [_#defs."/$defs/snowflake_configuration/$defs/s3_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/snowflake_configuration/$defs/s3_configuration"]])
		schema!: string
		secrets_manager_configuration?: matchN(1, [_#defs."/$defs/snowflake_configuration/$defs/secrets_manager_configuration", list.MaxItems(1) & [..._#defs."/$defs/snowflake_configuration/$defs/secrets_manager_configuration"]])
		table!: string
		snowflake_role_configuration?: matchN(1, [_#defs."/$defs/snowflake_configuration/$defs/snowflake_role_configuration", list.MaxItems(1) & [..._#defs."/$defs/snowflake_configuration/$defs/snowflake_role_configuration"]])
		user?: string
		snowflake_vpc_configuration?: matchN(1, [_#defs."/$defs/snowflake_configuration/$defs/snowflake_vpc_configuration", list.MaxItems(1) & [..._#defs."/$defs/snowflake_configuration/$defs/snowflake_vpc_configuration"]])
	})

	#splunk_configuration: close({
		buffering_interval?: number
		cloudwatch_logging_options?: matchN(1, [_#defs."/$defs/splunk_configuration/$defs/cloudwatch_logging_options", list.MaxItems(1) & [..._#defs."/$defs/splunk_configuration/$defs/cloudwatch_logging_options"]])
		buffering_size?:             number
		hec_acknowledgment_timeout?: number
		hec_endpoint!:               string
		processing_configuration?: matchN(1, [_#defs."/$defs/splunk_configuration/$defs/processing_configuration", list.MaxItems(1) & [..._#defs."/$defs/splunk_configuration/$defs/processing_configuration"]])
		hec_endpoint_type?: string
		s3_configuration?: matchN(1, [_#defs."/$defs/splunk_configuration/$defs/s3_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/splunk_configuration/$defs/s3_configuration"]])
		hec_token?:      string
		retry_duration?: number
		s3_backup_mode?: string
		secrets_manager_configuration?: matchN(1, [_#defs."/$defs/splunk_configuration/$defs/secrets_manager_configuration", list.MaxItems(1) & [..._#defs."/$defs/splunk_configuration/$defs/secrets_manager_configuration"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/elasticsearch_configuration/$defs/cloudwatch_logging_options": close({
		enabled?:         bool
		log_group_name?:  string
		log_stream_name?: string
	})

	_#defs: "/$defs/elasticsearch_configuration/$defs/processing_configuration": close({
		processors?: matchN(1, [_#defs."/$defs/elasticsearch_configuration/$defs/processing_configuration/$defs/processors", [..._#defs."/$defs/elasticsearch_configuration/$defs/processing_configuration/$defs/processors"]])
		enabled?: bool
	})

	_#defs: "/$defs/elasticsearch_configuration/$defs/processing_configuration/$defs/processors": close({
		parameters?: matchN(1, [_#defs."/$defs/elasticsearch_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters", [..._#defs."/$defs/elasticsearch_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters"]])
		type!: string
	})

	_#defs: "/$defs/elasticsearch_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters": close({
		parameter_name!:  string
		parameter_value!: string
	})

	_#defs: "/$defs/elasticsearch_configuration/$defs/s3_configuration": close({
		cloudwatch_logging_options?: matchN(1, [_#defs."/$defs/elasticsearch_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options", list.MaxItems(1) & [..._#defs."/$defs/elasticsearch_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options"]])
		bucket_arn!:          string
		buffering_interval?:  number
		buffering_size?:      number
		compression_format?:  string
		error_output_prefix?: string
		kms_key_arn?:         string
		prefix?:              string
		role_arn!:            string
	})

	_#defs: "/$defs/elasticsearch_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options": close({
		enabled?:         bool
		log_group_name?:  string
		log_stream_name?: string
	})

	_#defs: "/$defs/elasticsearch_configuration/$defs/vpc_config": close({
		role_arn!: string
		security_group_ids!: [...string]
		subnet_ids!: [...string]
		vpc_id?: string
	})

	_#defs: "/$defs/extended_s3_configuration/$defs/cloudwatch_logging_options": close({
		enabled?:         bool
		log_group_name?:  string
		log_stream_name?: string
	})

	_#defs: "/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration": close({
		input_format_configuration?: matchN(1, [_#defs."/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/input_format_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/input_format_configuration"]])
		output_format_configuration?: matchN(1, [_#defs."/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/output_format_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/output_format_configuration"]])
		schema_configuration?: matchN(1, [_#defs."/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/schema_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/schema_configuration"]])
		enabled?: bool
	})

	_#defs: "/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/input_format_configuration": close({
		deserializer?: matchN(1, [_#defs."/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/input_format_configuration/$defs/deserializer", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/input_format_configuration/$defs/deserializer"]])
	})

	_#defs: "/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/input_format_configuration/$defs/deserializer": close({
		hive_json_ser_de?: matchN(1, [_#defs."/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/input_format_configuration/$defs/deserializer/$defs/hive_json_ser_de", list.MaxItems(1) & [..._#defs."/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/input_format_configuration/$defs/deserializer/$defs/hive_json_ser_de"]])
		open_x_json_ser_de?: matchN(1, [_#defs."/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/input_format_configuration/$defs/deserializer/$defs/open_x_json_ser_de", list.MaxItems(1) & [..._#defs."/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/input_format_configuration/$defs/deserializer/$defs/open_x_json_ser_de"]])
	})

	_#defs: "/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/input_format_configuration/$defs/deserializer/$defs/hive_json_ser_de": close({
		timestamp_formats?: [...string]
	})

	_#defs: "/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/input_format_configuration/$defs/deserializer/$defs/open_x_json_ser_de": close({
		case_insensitive?: bool
		column_to_json_key_mappings?: [string]: string
		convert_dots_in_json_keys_to_underscores?: bool
	})

	_#defs: "/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/output_format_configuration": close({
		serializer?: matchN(1, [_#defs."/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/output_format_configuration/$defs/serializer", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/output_format_configuration/$defs/serializer"]])
	})

	_#defs: "/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/output_format_configuration/$defs/serializer": close({
		orc_ser_de?: matchN(1, [_#defs."/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/output_format_configuration/$defs/serializer/$defs/orc_ser_de", list.MaxItems(1) & [..._#defs."/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/output_format_configuration/$defs/serializer/$defs/orc_ser_de"]])
		parquet_ser_de?: matchN(1, [_#defs."/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/output_format_configuration/$defs/serializer/$defs/parquet_ser_de", list.MaxItems(1) & [..._#defs."/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/output_format_configuration/$defs/serializer/$defs/parquet_ser_de"]])
	})

	_#defs: "/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/output_format_configuration/$defs/serializer/$defs/orc_ser_de": close({
		block_size_bytes?: number
		bloom_filter_columns?: [...string]
		bloom_filter_false_positive_probability?: number
		compression?:                             string
		dictionary_key_threshold?:                number
		enable_padding?:                          bool
		format_version?:                          string
		padding_tolerance?:                       number
		row_index_stride?:                        number
		stripe_size_bytes?:                       number
	})

	_#defs: "/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/output_format_configuration/$defs/serializer/$defs/parquet_ser_de": close({
		block_size_bytes?:              number
		compression?:                   string
		enable_dictionary_compression?: bool
		max_padding_bytes?:             number
		page_size_bytes?:               number
		writer_version?:                string
	})

	_#defs: "/$defs/extended_s3_configuration/$defs/data_format_conversion_configuration/$defs/schema_configuration": close({
		catalog_id?:    string
		database_name!: string
		region?:        string
		role_arn!:      string
		table_name!:    string
		version_id?:    string
	})

	_#defs: "/$defs/extended_s3_configuration/$defs/dynamic_partitioning_configuration": close({
		enabled?:        bool
		retry_duration?: number
	})

	_#defs: "/$defs/extended_s3_configuration/$defs/processing_configuration": close({
		processors?: matchN(1, [_#defs."/$defs/extended_s3_configuration/$defs/processing_configuration/$defs/processors", [..._#defs."/$defs/extended_s3_configuration/$defs/processing_configuration/$defs/processors"]])
		enabled?: bool
	})

	_#defs: "/$defs/extended_s3_configuration/$defs/processing_configuration/$defs/processors": close({
		parameters?: matchN(1, [_#defs."/$defs/extended_s3_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters", [..._#defs."/$defs/extended_s3_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters"]])
		type!: string
	})

	_#defs: "/$defs/extended_s3_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters": close({
		parameter_name!:  string
		parameter_value!: string
	})

	_#defs: "/$defs/extended_s3_configuration/$defs/s3_backup_configuration": close({
		cloudwatch_logging_options?: matchN(1, [_#defs."/$defs/extended_s3_configuration/$defs/s3_backup_configuration/$defs/cloudwatch_logging_options", list.MaxItems(1) & [..._#defs."/$defs/extended_s3_configuration/$defs/s3_backup_configuration/$defs/cloudwatch_logging_options"]])
		bucket_arn!:          string
		buffering_interval?:  number
		buffering_size?:      number
		compression_format?:  string
		error_output_prefix?: string
		kms_key_arn?:         string
		prefix?:              string
		role_arn!:            string
	})

	_#defs: "/$defs/extended_s3_configuration/$defs/s3_backup_configuration/$defs/cloudwatch_logging_options": close({
		enabled?:         bool
		log_group_name?:  string
		log_stream_name?: string
	})

	_#defs: "/$defs/http_endpoint_configuration/$defs/cloudwatch_logging_options": close({
		enabled?:         bool
		log_group_name?:  string
		log_stream_name?: string
	})

	_#defs: "/$defs/http_endpoint_configuration/$defs/processing_configuration": close({
		processors?: matchN(1, [_#defs."/$defs/http_endpoint_configuration/$defs/processing_configuration/$defs/processors", [..._#defs."/$defs/http_endpoint_configuration/$defs/processing_configuration/$defs/processors"]])
		enabled?: bool
	})

	_#defs: "/$defs/http_endpoint_configuration/$defs/processing_configuration/$defs/processors": close({
		parameters?: matchN(1, [_#defs."/$defs/http_endpoint_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters", [..._#defs."/$defs/http_endpoint_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters"]])
		type!: string
	})

	_#defs: "/$defs/http_endpoint_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters": close({
		parameter_name!:  string
		parameter_value!: string
	})

	_#defs: "/$defs/http_endpoint_configuration/$defs/request_configuration": close({
		common_attributes?: matchN(1, [_#defs."/$defs/http_endpoint_configuration/$defs/request_configuration/$defs/common_attributes", [..._#defs."/$defs/http_endpoint_configuration/$defs/request_configuration/$defs/common_attributes"]])
		content_encoding?: string
	})

	_#defs: "/$defs/http_endpoint_configuration/$defs/request_configuration/$defs/common_attributes": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/http_endpoint_configuration/$defs/s3_configuration": close({
		cloudwatch_logging_options?: matchN(1, [_#defs."/$defs/http_endpoint_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options", list.MaxItems(1) & [..._#defs."/$defs/http_endpoint_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options"]])
		bucket_arn!:          string
		buffering_interval?:  number
		buffering_size?:      number
		compression_format?:  string
		error_output_prefix?: string
		kms_key_arn?:         string
		prefix?:              string
		role_arn!:            string
	})

	_#defs: "/$defs/http_endpoint_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options": close({
		enabled?:         bool
		log_group_name?:  string
		log_stream_name?: string
	})

	_#defs: "/$defs/http_endpoint_configuration/$defs/secrets_manager_configuration": close({
		enabled?:    bool
		role_arn?:   string
		secret_arn?: string
	})

	_#defs: "/$defs/iceberg_configuration/$defs/cloudwatch_logging_options": close({
		enabled?:         bool
		log_group_name?:  string
		log_stream_name?: string
	})

	_#defs: "/$defs/iceberg_configuration/$defs/destination_table_configuration": close({
		database_name!:          string
		s3_error_output_prefix?: string
		table_name!:             string
		unique_keys?: [...string]
	})

	_#defs: "/$defs/iceberg_configuration/$defs/processing_configuration": close({
		processors?: matchN(1, [_#defs."/$defs/iceberg_configuration/$defs/processing_configuration/$defs/processors", [..._#defs."/$defs/iceberg_configuration/$defs/processing_configuration/$defs/processors"]])
		enabled?: bool
	})

	_#defs: "/$defs/iceberg_configuration/$defs/processing_configuration/$defs/processors": close({
		parameters?: matchN(1, [_#defs."/$defs/iceberg_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters", [..._#defs."/$defs/iceberg_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters"]])
		type!: string
	})

	_#defs: "/$defs/iceberg_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters": close({
		parameter_name!:  string
		parameter_value!: string
	})

	_#defs: "/$defs/iceberg_configuration/$defs/s3_configuration": close({
		cloudwatch_logging_options?: matchN(1, [_#defs."/$defs/iceberg_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options", list.MaxItems(1) & [..._#defs."/$defs/iceberg_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options"]])
		bucket_arn!:          string
		buffering_interval?:  number
		buffering_size?:      number
		compression_format?:  string
		error_output_prefix?: string
		kms_key_arn?:         string
		prefix?:              string
		role_arn!:            string
	})

	_#defs: "/$defs/iceberg_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options": close({
		enabled?:         bool
		log_group_name?:  string
		log_stream_name?: string
	})

	_#defs: "/$defs/msk_source_configuration/$defs/authentication_configuration": close({
		connectivity!: string
		role_arn!:     string
	})

	_#defs: "/$defs/opensearch_configuration/$defs/cloudwatch_logging_options": close({
		enabled?:         bool
		log_group_name?:  string
		log_stream_name?: string
	})

	_#defs: "/$defs/opensearch_configuration/$defs/document_id_options": close({
		default_document_id_format!: string
	})

	_#defs: "/$defs/opensearch_configuration/$defs/processing_configuration": close({
		processors?: matchN(1, [_#defs."/$defs/opensearch_configuration/$defs/processing_configuration/$defs/processors", [..._#defs."/$defs/opensearch_configuration/$defs/processing_configuration/$defs/processors"]])
		enabled?: bool
	})

	_#defs: "/$defs/opensearch_configuration/$defs/processing_configuration/$defs/processors": close({
		parameters?: matchN(1, [_#defs."/$defs/opensearch_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters", [..._#defs."/$defs/opensearch_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters"]])
		type!: string
	})

	_#defs: "/$defs/opensearch_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters": close({
		parameter_name!:  string
		parameter_value!: string
	})

	_#defs: "/$defs/opensearch_configuration/$defs/s3_configuration": close({
		cloudwatch_logging_options?: matchN(1, [_#defs."/$defs/opensearch_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options", list.MaxItems(1) & [..._#defs."/$defs/opensearch_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options"]])
		bucket_arn!:          string
		buffering_interval?:  number
		buffering_size?:      number
		compression_format?:  string
		error_output_prefix?: string
		kms_key_arn?:         string
		prefix?:              string
		role_arn!:            string
	})

	_#defs: "/$defs/opensearch_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options": close({
		enabled?:         bool
		log_group_name?:  string
		log_stream_name?: string
	})

	_#defs: "/$defs/opensearch_configuration/$defs/vpc_config": close({
		role_arn!: string
		security_group_ids!: [...string]
		subnet_ids!: [...string]
		vpc_id?: string
	})

	_#defs: "/$defs/opensearchserverless_configuration/$defs/cloudwatch_logging_options": close({
		enabled?:         bool
		log_group_name?:  string
		log_stream_name?: string
	})

	_#defs: "/$defs/opensearchserverless_configuration/$defs/processing_configuration": close({
		processors?: matchN(1, [_#defs."/$defs/opensearchserverless_configuration/$defs/processing_configuration/$defs/processors", [..._#defs."/$defs/opensearchserverless_configuration/$defs/processing_configuration/$defs/processors"]])
		enabled?: bool
	})

	_#defs: "/$defs/opensearchserverless_configuration/$defs/processing_configuration/$defs/processors": close({
		parameters?: matchN(1, [_#defs."/$defs/opensearchserverless_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters", [..._#defs."/$defs/opensearchserverless_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters"]])
		type!: string
	})

	_#defs: "/$defs/opensearchserverless_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters": close({
		parameter_name!:  string
		parameter_value!: string
	})

	_#defs: "/$defs/opensearchserverless_configuration/$defs/s3_configuration": close({
		cloudwatch_logging_options?: matchN(1, [_#defs."/$defs/opensearchserverless_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options", list.MaxItems(1) & [..._#defs."/$defs/opensearchserverless_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options"]])
		bucket_arn!:          string
		buffering_interval?:  number
		buffering_size?:      number
		compression_format?:  string
		error_output_prefix?: string
		kms_key_arn?:         string
		prefix?:              string
		role_arn!:            string
	})

	_#defs: "/$defs/opensearchserverless_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options": close({
		enabled?:         bool
		log_group_name?:  string
		log_stream_name?: string
	})

	_#defs: "/$defs/opensearchserverless_configuration/$defs/vpc_config": close({
		role_arn!: string
		security_group_ids!: [...string]
		subnet_ids!: [...string]
		vpc_id?: string
	})

	_#defs: "/$defs/redshift_configuration/$defs/cloudwatch_logging_options": close({
		enabled?:         bool
		log_group_name?:  string
		log_stream_name?: string
	})

	_#defs: "/$defs/redshift_configuration/$defs/processing_configuration": close({
		processors?: matchN(1, [_#defs."/$defs/redshift_configuration/$defs/processing_configuration/$defs/processors", [..._#defs."/$defs/redshift_configuration/$defs/processing_configuration/$defs/processors"]])
		enabled?: bool
	})

	_#defs: "/$defs/redshift_configuration/$defs/processing_configuration/$defs/processors": close({
		parameters?: matchN(1, [_#defs."/$defs/redshift_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters", [..._#defs."/$defs/redshift_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters"]])
		type!: string
	})

	_#defs: "/$defs/redshift_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters": close({
		parameter_name!:  string
		parameter_value!: string
	})

	_#defs: "/$defs/redshift_configuration/$defs/s3_backup_configuration": close({
		cloudwatch_logging_options?: matchN(1, [_#defs."/$defs/redshift_configuration/$defs/s3_backup_configuration/$defs/cloudwatch_logging_options", list.MaxItems(1) & [..._#defs."/$defs/redshift_configuration/$defs/s3_backup_configuration/$defs/cloudwatch_logging_options"]])
		bucket_arn!:          string
		buffering_interval?:  number
		buffering_size?:      number
		compression_format?:  string
		error_output_prefix?: string
		kms_key_arn?:         string
		prefix?:              string
		role_arn!:            string
	})

	_#defs: "/$defs/redshift_configuration/$defs/s3_backup_configuration/$defs/cloudwatch_logging_options": close({
		enabled?:         bool
		log_group_name?:  string
		log_stream_name?: string
	})

	_#defs: "/$defs/redshift_configuration/$defs/s3_configuration": close({
		cloudwatch_logging_options?: matchN(1, [_#defs."/$defs/redshift_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options", list.MaxItems(1) & [..._#defs."/$defs/redshift_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options"]])
		bucket_arn!:          string
		buffering_interval?:  number
		buffering_size?:      number
		compression_format?:  string
		error_output_prefix?: string
		kms_key_arn?:         string
		prefix?:              string
		role_arn!:            string
	})

	_#defs: "/$defs/redshift_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options": close({
		enabled?:         bool
		log_group_name?:  string
		log_stream_name?: string
	})

	_#defs: "/$defs/redshift_configuration/$defs/secrets_manager_configuration": close({
		enabled?:    bool
		role_arn?:   string
		secret_arn?: string
	})

	_#defs: "/$defs/snowflake_configuration/$defs/cloudwatch_logging_options": close({
		enabled?:         bool
		log_group_name?:  string
		log_stream_name?: string
	})

	_#defs: "/$defs/snowflake_configuration/$defs/processing_configuration": close({
		processors?: matchN(1, [_#defs."/$defs/snowflake_configuration/$defs/processing_configuration/$defs/processors", [..._#defs."/$defs/snowflake_configuration/$defs/processing_configuration/$defs/processors"]])
		enabled?: bool
	})

	_#defs: "/$defs/snowflake_configuration/$defs/processing_configuration/$defs/processors": close({
		parameters?: matchN(1, [_#defs."/$defs/snowflake_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters", [..._#defs."/$defs/snowflake_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters"]])
		type!: string
	})

	_#defs: "/$defs/snowflake_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters": close({
		parameter_name!:  string
		parameter_value!: string
	})

	_#defs: "/$defs/snowflake_configuration/$defs/s3_configuration": close({
		cloudwatch_logging_options?: matchN(1, [_#defs."/$defs/snowflake_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options", list.MaxItems(1) & [..._#defs."/$defs/snowflake_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options"]])
		bucket_arn!:          string
		buffering_interval?:  number
		buffering_size?:      number
		compression_format?:  string
		error_output_prefix?: string
		kms_key_arn?:         string
		prefix?:              string
		role_arn!:            string
	})

	_#defs: "/$defs/snowflake_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options": close({
		enabled?:         bool
		log_group_name?:  string
		log_stream_name?: string
	})

	_#defs: "/$defs/snowflake_configuration/$defs/secrets_manager_configuration": close({
		enabled?:    bool
		role_arn?:   string
		secret_arn?: string
	})

	_#defs: "/$defs/snowflake_configuration/$defs/snowflake_role_configuration": close({
		enabled?:        bool
		snowflake_role?: string
	})

	_#defs: "/$defs/snowflake_configuration/$defs/snowflake_vpc_configuration": close({
		private_link_vpce_id!: string
	})

	_#defs: "/$defs/splunk_configuration/$defs/cloudwatch_logging_options": close({
		enabled?:         bool
		log_group_name?:  string
		log_stream_name?: string
	})

	_#defs: "/$defs/splunk_configuration/$defs/processing_configuration": close({
		processors?: matchN(1, [_#defs."/$defs/splunk_configuration/$defs/processing_configuration/$defs/processors", [..._#defs."/$defs/splunk_configuration/$defs/processing_configuration/$defs/processors"]])
		enabled?: bool
	})

	_#defs: "/$defs/splunk_configuration/$defs/processing_configuration/$defs/processors": close({
		parameters?: matchN(1, [_#defs."/$defs/splunk_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters", [..._#defs."/$defs/splunk_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters"]])
		type!: string
	})

	_#defs: "/$defs/splunk_configuration/$defs/processing_configuration/$defs/processors/$defs/parameters": close({
		parameter_name!:  string
		parameter_value!: string
	})

	_#defs: "/$defs/splunk_configuration/$defs/s3_configuration": close({
		cloudwatch_logging_options?: matchN(1, [_#defs."/$defs/splunk_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options", list.MaxItems(1) & [..._#defs."/$defs/splunk_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options"]])
		bucket_arn!:          string
		buffering_interval?:  number
		buffering_size?:      number
		compression_format?:  string
		error_output_prefix?: string
		kms_key_arn?:         string
		prefix?:              string
		role_arn!:            string
	})

	_#defs: "/$defs/splunk_configuration/$defs/s3_configuration/$defs/cloudwatch_logging_options": close({
		enabled?:         bool
		log_group_name?:  string
		log_stream_name?: string
	})

	_#defs: "/$defs/splunk_configuration/$defs/secrets_manager_configuration": close({
		enabled?:    bool
		role_arn?:   string
		secret_arn?: string
	})
}
