package res

import "list"

#aws_neptune_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_neptune_cluster")
	allow_major_version_upgrade?: bool
	apply_immediately?:           bool
	arn?:                         string
	availability_zones?: [...string]
	backup_retention_period?:   number
	cluster_identifier?:        string
	cluster_identifier_prefix?: string
	cluster_members?: [...string]
	cluster_resource_id?:   string
	copy_tags_to_snapshot?: bool
	deletion_protection?:   bool
	enable_cloudwatch_logs_exports?: [...string]
	endpoint?:                            string
	engine?:                              string
	engine_version?:                      string
	final_snapshot_identifier?:           string
	global_cluster_identifier?:           string
	hosted_zone_id?:                      string
	iam_database_authentication_enabled?: bool
	iam_roles?: [...string]
	id?:                                    string
	kms_key_arn?:                           string
	neptune_cluster_parameter_group_name?:  string
	neptune_instance_parameter_group_name?: string
	neptune_subnet_group_name?:             string
	port?:                                  number
	preferred_backup_window?:               string
	preferred_maintenance_window?:          string
	reader_endpoint?:                       string
	replication_source_identifier?:         string
	skip_final_snapshot?:                   bool
	snapshot_identifier?:                   string
	storage_encrypted?:                     bool
	storage_type?:                          string
	tags?: [string]:     string
	tags_all?: [string]: string
	vpc_security_group_ids?: [...string]
	serverless_v2_scaling_configuration?: #serverless_v2_scaling_configuration | list.MaxItems(1) & [...#serverless_v2_scaling_configuration]
	timeouts?: #timeouts

	#serverless_v2_scaling_configuration: {
		max_capacity?: number
		min_capacity?: number
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
