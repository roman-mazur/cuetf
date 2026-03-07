package res

import "list"

#aws_dms_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_dms_endpoint")
	close({
		elasticsearch_settings?: matchN(1, [#elasticsearch_settings, list.MaxItems(1) & [...#elasticsearch_settings]])
		kafka_settings?: matchN(1, [#kafka_settings, list.MaxItems(1) & [...#kafka_settings]])
		kinesis_settings?: matchN(1, [#kinesis_settings, list.MaxItems(1) & [...#kinesis_settings]])
		mongodb_settings?: matchN(1, [#mongodb_settings, list.MaxItems(1) & [...#mongodb_settings]])
		mysql_settings?: matchN(1, [#mysql_settings, list.MaxItems(1) & [...#mysql_settings]])
		oracle_settings?: matchN(1, [#oracle_settings, list.MaxItems(1) & [...#oracle_settings]])
		postgres_settings?: matchN(1, [#postgres_settings, list.MaxItems(1) & [...#postgres_settings]])
		redis_settings?: matchN(1, [#redis_settings, list.MaxItems(1) & [...#redis_settings]])
		redshift_settings?: matchN(1, [#redshift_settings, list.MaxItems(1) & [...#redshift_settings]])
		timeouts?:                    #timeouts
		certificate_arn?:             string
		database_name?:               string
		endpoint_arn?:                string
		endpoint_id!:                 string
		endpoint_type!:               string
		engine_name!:                 string
		extra_connection_attributes?: string
		id?:                          string
		kms_key_arn?:                 string
		password?:                    string
		pause_replication_tasks?:     bool
		port?:                        number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                          string
		secrets_manager_access_role_arn?: string
		secrets_manager_arn?:             string
		server_name?:                     string
		service_access_role?:             string
		ssl_mode?:                        string
		tags?: [string]:     string
		tags_all?: [string]: string
		username?: string
	})

	#elasticsearch_settings: close({
		endpoint_uri!:               string
		error_retry_duration?:       number
		full_load_error_percentage?: number
		service_access_role_arn!:    string
		use_new_mapping_type?:       bool
	})

	#kafka_settings: close({
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
		sasl_mechanism?:                 string
		sasl_password?:                  string
		sasl_username?:                  string
		security_protocol?:              string
		ssl_ca_certificate_arn?:         string
		ssl_client_certificate_arn?:     string
		ssl_client_key_arn?:             string
		ssl_client_key_password?:        string
		topic?:                          string
	})

	#kinesis_settings: close({
		include_control_details?:        bool
		include_null_and_empty?:         bool
		include_partition_value?:        bool
		include_table_alter_operations?: bool
		include_transaction_details?:    bool
		message_format?:                 string
		partition_include_schema_table?: bool
		service_access_role_arn?:        string
		stream_arn?:                     string
		use_large_integer_value?:        bool
	})

	#mongodb_settings: close({
		auth_mechanism?:      string
		auth_source?:         string
		auth_type?:           string
		docs_to_investigate?: string
		extract_doc_id?:      string
		nesting_level?:       string
		use_update_lookup?:   bool
	})

	#mysql_settings: close({
		after_connect_script?:              string
		authentication_method?:             string
		clean_source_metadata_on_mismatch?: bool
		events_poll_interval?:              number
		execute_timeout?:                   number
		max_file_size?:                     number
		parallel_load_threads?:             number
		server_timezone?:                   string
		service_access_role_arn?:           string
		target_db_type?:                    string
	})

	#oracle_settings: close({
		access_alternate_directly?:          bool
		add_supplemental_logging?:           bool
		additional_archived_log_dest_id?:    number
		allow_selected_nested_tables?:       bool
		archived_log_dest_id?:               number
		archived_logs_only?:                 bool
		asm_password?:                       string
		asm_server?:                         string
		asm_user?:                           string
		authentication_method?:              string
		char_length_semantics?:              string
		convert_timestamp_with_zone_to_utc?: bool
		direct_path_no_log?:                 bool
		direct_path_parallel_load?:          bool
		enable_homogenous_tablespace?:       bool
		extra_archived_log_dest_ids?: [...number]
		fail_task_on_lob_truncation?:                   bool
		number_datatype_scale?:                         number
		open_transaction_window?:                       number
		oracle_path_prefix?:                            string
		parallel_asm_read_threads?:                     number
		read_ahead_blocks?:                             number
		read_table_space_name?:                         bool
		replace_path_prefix?:                           bool
		retry_interval?:                                number
		secrets_manager_oracle_asm_access_role_arn?:    string
		secrets_manager_oracle_asm_secret_id?:          string
		security_db_encryption?:                        string
		security_db_encryption_name?:                   string
		spatial_data_option_to_geo_json_function_name?: string
		standby_delay_time?:                            number
		trim_space_in_char?:                            bool
		use_alternate_folder_for_online?:               bool
		use_bfile?:                                     bool
		use_direct_path_full_load?:                     bool
		use_logminer_reader?:                           bool
		use_path_prefix?:                               string
	})

	#postgres_settings: close({
		after_connect_script?:         string
		authentication_method?:        string
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
		service_access_role_arn?:      string
		slot_name?:                    string
	})

	#redis_settings: close({
		auth_password?:          string
		auth_type!:              string
		auth_user_name?:         string
		port!:                   number
		server_name!:            string
		ssl_ca_certificate_arn?: string
		ssl_security_protocol?:  string
	})

	#redshift_settings: close({
		bucket_folder?:                     string
		bucket_name?:                       string
		encryption_mode?:                   string
		server_side_encryption_kms_key_id?: string
		service_access_role_arn?:           string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
