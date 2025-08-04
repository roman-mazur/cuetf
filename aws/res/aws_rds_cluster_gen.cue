package res

import "list"

#aws_rds_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rds_cluster")
	close({
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
		cluster_scalability_type?:         string
		copy_tags_to_snapshot?:            bool
		database_insights_mode?:           string
		database_name?:                    string
		db_cluster_instance_class?:        string
		db_cluster_parameter_group_name?:  string
		db_instance_parameter_group_name?: string
		db_subnet_group_name?:             string
		restore_to_point_in_time?: matchN(1, [#restore_to_point_in_time, list.MaxItems(1) & [...#restore_to_point_in_time]])
		db_system_id?:                   string
		delete_automated_backups?:       bool
		deletion_protection?:            bool
		domain?:                         string
		domain_iam_role_name?:           string
		enable_global_write_forwarding?: bool
		enable_http_endpoint?:           bool
		enable_local_write_forwarding?:  bool
		enabled_cloudwatch_logs_exports?: [...string]
		endpoint?:                  string
		engine!:                    string
		engine_lifecycle_support?:  string
		engine_mode?:               string
		engine_version?:            string
		engine_version_actual?:     string
		final_snapshot_identifier?: string
		s3_import?: matchN(1, [#s3_import, list.MaxItems(1) & [...#s3_import]])
		global_cluster_identifier?: string
		scaling_configuration?: matchN(1, [#scaling_configuration, list.MaxItems(1) & [...#scaling_configuration]])
		hosted_zone_id?:                      string
		iam_database_authentication_enabled?: bool
		iam_roles?: [...string]
		id?:                          string
		iops?:                        number
		kms_key_id?:                  string
		manage_master_user_password?: bool
		master_password?:             string
		master_password_wo?:          string
		master_password_wo_version?:  number
		master_user_secret?: [...close({
			kms_key_id?:    string
			secret_arn?:    string
			secret_status?: string
		})]
		master_user_secret_kms_key_id?:         string
		master_username?:                       string
		monitoring_interval?:                   number
		monitoring_role_arn?:                   string
		network_type?:                          string
		performance_insights_enabled?:          bool
		performance_insights_kms_key_id?:       string
		performance_insights_retention_period?: number
		port?:                                  number
		preferred_backup_window?:               string
		preferred_maintenance_window?:          string
		reader_endpoint?:                       string
		serverlessv2_scaling_configuration?: matchN(1, [#serverlessv2_scaling_configuration, list.MaxItems(1) & [...#serverlessv2_scaling_configuration]])
		region?:                        string
		replication_source_identifier?: string
		skip_final_snapshot?:           bool
		snapshot_identifier?:           string
		source_region?:                 string
		storage_encrypted?:             bool
		storage_type?:                  string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_security_group_ids?: [...string]
		timeouts?: #timeouts
	})

	#restore_to_point_in_time: close({
		restore_to_time?:            string
		restore_type?:               string
		source_cluster_identifier?:  string
		source_cluster_resource_id?: string
		use_latest_restorable_time?: bool
	})

	#s3_import: close({
		bucket_name!:           string
		bucket_prefix?:         string
		ingestion_role!:        string
		source_engine!:         string
		source_engine_version!: string
	})

	#scaling_configuration: close({
		auto_pause?:               bool
		max_capacity?:             number
		min_capacity?:             number
		seconds_before_timeout?:   number
		seconds_until_auto_pause?: number
		timeout_action?:           string
	})

	#serverlessv2_scaling_configuration: close({
		max_capacity!:             number
		min_capacity!:             number
		seconds_until_auto_pause?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
