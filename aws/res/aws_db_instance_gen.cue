package res

import "list"

#aws_db_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_db_instance")
	address?:                     string
	allocated_storage?:           number
	allow_major_version_upgrade?: bool
	apply_immediately?:           bool
	arn?:                         string
	auto_minor_version_upgrade?:  bool
	availability_zone?:           string
	backup_retention_period?:     number
	backup_target?:               string
	backup_window?:               string
	ca_cert_identifier?:          string
	character_set_name?:          string
	copy_tags_to_snapshot?:       bool
	custom_iam_instance_profile?: string
	customer_owned_ip_enabled?:   bool
	db_name?:                     string
	db_subnet_group_name?:        string
	delete_automated_backups?:    bool
	deletion_protection?:         bool
	domain?:                      string
	domain_iam_role_name?:        string
	enabled_cloudwatch_logs_exports?: [...string]
	endpoint?:                            string
	engine?:                              string
	engine_version?:                      string
	engine_version_actual?:               string
	final_snapshot_identifier?:           string
	hosted_zone_id?:                      string
	iam_database_authentication_enabled?: bool
	id?:                                  string
	identifier?:                          string
	identifier_prefix?:                   string
	instance_class:                       string
	iops?:                                number
	kms_key_id?:                          string
	latest_restorable_time?:              string
	license_model?:                       string
	listener_endpoint?: [...{
		address?:        string
		hosted_zone_id?: string
		port?:           number
	}]
	maintenance_window?:          string
	manage_master_user_password?: bool
	master_user_secret?: [...{
		kms_key_id?:    string
		secret_arn?:    string
		secret_status?: string
	}]
	master_user_secret_kms_key_id?:         string
	max_allocated_storage?:                 number
	monitoring_interval?:                   number
	monitoring_role_arn?:                   string
	multi_az?:                              bool
	nchar_character_set_name?:              string
	network_type?:                          string
	option_group_name?:                     string
	parameter_group_name?:                  string
	password?:                              string
	performance_insights_enabled?:          bool
	performance_insights_kms_key_id?:       string
	performance_insights_retention_period?: number
	port?:                                  number
	publicly_accessible?:                   bool
	replica_mode?:                          string
	replicas?: [...string]
	replicate_source_db?: string
	resource_id?:         string
	skip_final_snapshot?: bool
	snapshot_identifier?: string
	status?:              string
	storage_encrypted?:   bool
	storage_throughput?:  number
	storage_type?:        string
	tags?: [string]: string
	tags_all?: [string]: string
	timezone?: string
	username?: string
	vpc_security_group_ids?: [...string]
	blue_green_update?:        #blue_green_update | list.MaxItems(1) & [...#blue_green_update]
	restore_to_point_in_time?: #restore_to_point_in_time | list.MaxItems(1) & [...#restore_to_point_in_time]
	s3_import?:                #s3_import | list.MaxItems(1) & [...#s3_import]
	timeouts?:                 #timeouts

	#blue_green_update: enabled?: bool

	#restore_to_point_in_time: {
		restore_time?:                             string
		source_db_instance_automated_backups_arn?: string
		source_db_instance_identifier?:            string
		source_dbi_resource_id?:                   string
		use_latest_restorable_time?:               bool
	}

	#s3_import: {
		bucket_name:           string
		bucket_prefix?:        string
		ingestion_role:        string
		source_engine:         string
		source_engine_version: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
