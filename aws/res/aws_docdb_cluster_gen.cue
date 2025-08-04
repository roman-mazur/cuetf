package res

import "list"

#aws_docdb_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_docdb_cluster")
	close({
		allow_major_version_upgrade?: bool
		apply_immediately?:           bool
		arn?:                         string
		availability_zones?: [...string]
		backup_retention_period?:   number
		cluster_identifier?:        string
		cluster_identifier_prefix?: string
		cluster_members?: [...string]
		cluster_resource_id?:             string
		db_cluster_parameter_group_name?: string
		db_subnet_group_name?:            string
		deletion_protection?:             bool
		enabled_cloudwatch_logs_exports?: [...string]
		endpoint?:                  string
		engine?:                    string
		engine_version?:            string
		final_snapshot_identifier?: string
		global_cluster_identifier?: string
		hosted_zone_id?:            string
		id?:                        string
		restore_to_point_in_time?: matchN(1, [#restore_to_point_in_time, list.MaxItems(1) & [...#restore_to_point_in_time]])
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
		master_username?:              string
		port?:                         number
		preferred_backup_window?:      string
		timeouts?:                     #timeouts
		preferred_maintenance_window?: string
		reader_endpoint?:              string
		region?:                       string
		skip_final_snapshot?:          bool
		snapshot_identifier?:          string
		storage_encrypted?:            bool
		storage_type?:                 string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_security_group_ids?: [...string]
	})

	#restore_to_point_in_time: close({
		restore_to_time?:            string
		restore_type?:               string
		source_cluster_identifier!:  string
		use_latest_restorable_time?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
