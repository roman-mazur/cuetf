package res

import "list"

#aws_rds_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_rds_cluster")
	allocated_storage?:           number
	allow_major_version_upgrade?: bool
	apply_immediately?:           bool
	arn?:                         string
	availability_zones?: [...string]
	backtrack_window?:          number
	backup_retention_period?:   number
	ca_certificate_identifier?: string
	ca_certificate_valid_till?: string
	cluster_identifier?:        string
	cluster_identifier_prefix?: string
	cluster_members?: [...string]
	cluster_resource_id?:              string
	copy_tags_to_snapshot?:            bool
	database_name?:                    string
	db_cluster_instance_class?:        string
	db_cluster_parameter_group_name?:  string
	db_instance_parameter_group_name?: string
	db_subnet_group_name?:             string
	db_system_id?:                     string
	delete_automated_backups?:         bool
	deletion_protection?:              bool
	domain?:                           string
	domain_iam_role_name?:             string
	enable_global_write_forwarding?:   bool
	enable_http_endpoint?:             bool
	enable_local_write_forwarding?:    bool
	enabled_cloudwatch_logs_exports?: [...string]
	endpoint?:                            string
	engine!:                              string
	engine_lifecycle_support?:            string
	engine_mode?:                         string
	engine_version?:                      string
	engine_version_actual?:               string
	final_snapshot_identifier?:           string
	global_cluster_identifier?:           string
	hosted_zone_id?:                      string
	iam_database_authentication_enabled?: bool
	iam_roles?: [...string]
	id?:                          string
	iops?:                        number
	kms_key_id?:                  string
	manage_master_user_password?: bool
	master_password?:             string
	master_user_secret?: [...{
		kms_key_id?:    string
		secret_arn?:    string
		secret_status?: string
	}]
	master_user_secret_kms_key_id?:         string
	master_username?:                       string
	network_type?:                          string
	performance_insights_enabled?:          bool
	performance_insights_kms_key_id?:       string
	performance_insights_retention_period?: number
	port?:                                  number
	preferred_backup_window?:               string
	preferred_maintenance_window?:          string
	reader_endpoint?:                       string
	replication_source_identifier?:         string
	skip_final_snapshot?:                   bool
	snapshot_identifier?:                   string
	source_region?:                         string
	storage_encrypted?:                     bool
	storage_type?:                          string
	tags?: [string]: string
	tags_all?: [string]: string
	vpc_security_group_ids?: [...string]
	restore_to_point_in_time?: #restore_to_point_in_time | list.MaxItems(1) & [...#restore_to_point_in_time]
	s3_import?: #s3_import | list.MaxItems(1) & [...#s3_import]
	scaling_configuration?: #scaling_configuration | list.MaxItems(1) & [...#scaling_configuration]
	serverlessv2_scaling_configuration?: #serverlessv2_scaling_configuration | list.MaxItems(1) & [...#serverlessv2_scaling_configuration]
	timeouts?: #timeouts

	#restore_to_point_in_time: {
		restore_to_time?:            string
		restore_type?:               string
		source_cluster_identifier?:  string
		source_cluster_resource_id?: string
		use_latest_restorable_time?: bool
	}

	#s3_import: {
		bucket_name!:           string
		bucket_prefix?:         string
		ingestion_role!:        string
		source_engine!:         string
		source_engine_version!: string
	}

	#scaling_configuration: {
		auto_pause?:               bool
		max_capacity?:             number
		min_capacity?:             number
		seconds_before_timeout?:   number
		seconds_until_auto_pause?: number
		timeout_action?:           string
	}

	#serverlessv2_scaling_configuration: {
		max_capacity!: number
		min_capacity!: number
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
