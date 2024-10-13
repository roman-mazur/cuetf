package res

import "list"

#aws_dms_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dms_endpoint")
	certificate_arn?:                 string
	database_name?:                   string
	endpoint_arn?:                    string
	endpoint_id!:                     string
	endpoint_type!:                   string
	engine_name!:                     string
	extra_connection_attributes?:     string
	id?:                              string
	kms_key_arn?:                     string
	password?:                        string
	pause_replication_tasks?:         bool
	port?:                            number
	secrets_manager_access_role_arn?: string
	secrets_manager_arn?:             string
	server_name?:                     string
	service_access_role?:             string
	ssl_mode?:                        string
	tags?: [string]:     string
	tags_all?: [string]: string
	username?: string
	elasticsearch_settings?: #elasticsearch_settings | list.MaxItems(1) & [...#elasticsearch_settings]
	kafka_settings?: #kafka_settings | list.MaxItems(1) & [...#kafka_settings]
	kinesis_settings?: #kinesis_settings | list.MaxItems(1) & [...#kinesis_settings]
	mongodb_settings?: #mongodb_settings | list.MaxItems(1) & [...#mongodb_settings]
	postgres_settings?: #postgres_settings | list.MaxItems(1) & [...#postgres_settings]
	redis_settings?: #redis_settings | list.MaxItems(1) & [...#redis_settings]
	redshift_settings?: #redshift_settings | list.MaxItems(1) & [...#redshift_settings]
	s3_settings?: #s3_settings | list.MaxItems(1) & [...#s3_settings]
	timeouts?: #timeouts

	#elasticsearch_settings: {
		endpoint_uri!:               string
		error_retry_duration?:       number
		full_load_error_percentage?: number
		service_access_role_arn!:    string
		use_new_mapping_type?:       bool
	}

	#kafka_settings: {
		broker!:                         string
		include_control_details?:        bool
		include_null_and_empty?:         bool
		include_partition_value?:        bool
		include_table_alter_operations?: bool
		include_transaction_details?:    bool
		message_format?:                 string
		message_max_bytes?:              number
		no_hex_prefix?:                  bool
		partition_include_schema_table?: bool
		sasl_password?:                  string
		sasl_username?:                  string
		security_protocol?:              string
		ssl_ca_certificate_arn?:         string
		ssl_client_certificate_arn?:     string
		ssl_client_key_arn?:             string
		ssl_client_key_password?:        string
		topic?:                          string
	}

	#kinesis_settings: {
		include_control_details?:        bool
		include_null_and_empty?:         bool
		include_partition_value?:        bool
		include_table_alter_operations?: bool
		include_transaction_details?:    bool
		message_format?:                 string
		partition_include_schema_table?: bool
		service_access_role_arn?:        string
		stream_arn?:                     string
	}

	#mongodb_settings: {
		auth_mechanism?:      string
		auth_source?:         string
		auth_type?:           string
		docs_to_investigate?: string
		extract_doc_id?:      string
		nesting_level?:       string
	}

	#postgres_settings: {
		after_connect_script?:         string
		babelfish_database_name?:      string
		capture_ddls?:                 bool
		database_mode?:                string
		ddl_artifacts_schema?:         string
		execute_timeout?:              number
		fail_tasks_on_lob_truncation?: bool
		heartbeat_enable?:             bool
		heartbeat_frequency?:          number
		heartbeat_schema?:             string
		map_boolean_as_boolean?:       bool
		map_jsonb_as_clob?:            bool
		map_long_varchar_as?:          string
		max_file_size?:                number
		plugin_name?:                  string
		slot_name?:                    string
	}

	#redis_settings: {
		auth_password?:          string
		auth_type!:              string
		auth_user_name?:         string
		port!:                   number
		server_name!:            string
		ssl_ca_certificate_arn?: string
		ssl_security_protocol?:  string
	}

	#redshift_settings: {
		bucket_folder?:                     string
		bucket_name?:                       string
		encryption_mode?:                   string
		server_side_encryption_kms_key_id?: string
		service_access_role_arn?:           string
	}

	#s3_settings: {
		add_column_name?:                             bool
		bucket_folder?:                               string
		bucket_name?:                                 string
		canned_acl_for_objects?:                      string
		cdc_inserts_and_updates?:                     bool
		cdc_inserts_only?:                            bool
		cdc_max_batch_interval?:                      number
		cdc_min_file_size?:                           number
		cdc_path?:                                    string
		compression_type?:                            string
		csv_delimiter?:                               string
		csv_no_sup_value?:                            string
		csv_null_value?:                              string
		csv_row_delimiter?:                           string
		data_format?:                                 string
		data_page_size?:                              number
		date_partition_delimiter?:                    string
		date_partition_enabled?:                      bool
		date_partition_sequence?:                     string
		dict_page_size_limit?:                        number
		enable_statistics?:                           bool
		encoding_type?:                               string
		encryption_mode?:                             string
		external_table_definition?:                   string
		glue_catalog_generation?:                     bool
		ignore_header_rows?:                          number
		include_op_for_full_load?:                    bool
		max_file_size?:                               number
		parquet_timestamp_in_millisecond?:            bool
		parquet_version?:                             string
		preserve_transactions?:                       bool
		rfc_4180?:                                    bool
		row_group_length?:                            number
		server_side_encryption_kms_key_id?:           string
		service_access_role_arn?:                     string
		timestamp_column_name?:                       string
		use_csv_no_sup_value?:                        bool
		use_task_start_time_for_full_load_timestamp?: bool
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
