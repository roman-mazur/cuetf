package res

#aws_dms_s3_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dms_s3_endpoint")
	add_column_name?:                             bool
	add_trailing_padding_character?:              bool
	bucket_folder?:                               string
	bucket_name!:                                 string
	canned_acl_for_objects?:                      string
	cdc_inserts_and_updates?:                     bool
	cdc_inserts_only?:                            bool
	cdc_max_batch_interval?:                      number
	cdc_min_file_size?:                           number
	cdc_path?:                                    string
	certificate_arn?:                             string
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
	date_partition_timezone?:                     string
	detach_target_on_lob_lookup_failure_parquet?: bool
	dict_page_size_limit?:                        number
	enable_statistics?:                           bool
	encoding_type?:                               string
	encryption_mode?:                             string
	endpoint_arn?:                                string
	endpoint_id!:                                 string
	endpoint_type!:                               string
	engine_display_name?:                         string
	expected_bucket_owner?:                       string
	external_id?:                                 string
	external_table_definition?:                   string
	glue_catalog_generation?:                     bool
	id?:                                          string
	ignore_header_rows?:                          number
	include_op_for_full_load?:                    bool
	kms_key_arn?:                                 string
	max_file_size?:                               number
	parquet_timestamp_in_millisecond?:            bool
	parquet_version?:                             string
	preserve_transactions?:                       bool
	rfc_4180?:                                    bool
	row_group_length?:                            number
	server_side_encryption_kms_key_id?:           string
	service_access_role_arn!:                     string
	ssl_mode?:                                    string
	status?:                                      string
	tags?: [string]:     string
	tags_all?: [string]: string
	timestamp_column_name?:                       string
	use_csv_no_sup_value?:                        bool
	use_task_start_time_for_full_load_timestamp?: bool
	timeouts?:                                    #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
