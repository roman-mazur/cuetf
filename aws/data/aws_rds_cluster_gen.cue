package data

#aws_rds_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_rds_cluster")
	arn?: string
	availability_zones?: [...string]
	backtrack_window?:        number
	backup_retention_period?: number
	cluster_identifier:       string
	cluster_members?: [...string]
	cluster_resource_id?:             string
	database_name?:                   string
	db_cluster_parameter_group_name?: string
	db_subnet_group_name?:            string
	db_system_id?:                    string
	enabled_cloudwatch_logs_exports?: [...string]
	endpoint?:                            string
	engine?:                              string
	engine_mode?:                         string
	engine_version?:                      string
	final_snapshot_identifier?:           string
	hosted_zone_id?:                      string
	iam_database_authentication_enabled?: bool
	iam_roles?: [...string]
	id?:         string
	kms_key_id?: string
	master_user_secret?: [...{
		kms_key_id?:    string
		secret_arn?:    string
		secret_status?: string
	}]
	master_username?:               string
	network_type?:                  string
	port?:                          number
	preferred_backup_window?:       string
	preferred_maintenance_window?:  string
	reader_endpoint?:               string
	replication_source_identifier?: string
	storage_encrypted?:             bool
	tags?: [string]: string
	vpc_security_group_ids?: [...string]
}
