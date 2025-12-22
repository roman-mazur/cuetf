package data

#aws_rds_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_rds_cluster")
	close({
		arn?: string
		availability_zones?: [...string]
		backtrack_window?:        number
		backup_retention_period?: number
		cluster_identifier!:      string
		cluster_members?: [...string]
		cluster_resource_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                          string
		cluster_scalability_type?:        string
		database_insights_mode?:          string
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
		master_user_secret?: [...close({
			kms_key_id?:    string
			secret_arn?:    string
			secret_status?: string
		})]
		master_username?:               string
		monitoring_interval?:           number
		monitoring_role_arn?:           string
		network_type?:                  string
		port?:                          number
		preferred_backup_window?:       string
		preferred_maintenance_window?:  string
		reader_endpoint?:               string
		replication_source_identifier?: string
		storage_encrypted?:             bool
		tags?: [string]: string
		upgrade_rollout_order?: string
		vpc_security_group_ids?: [...string]
	})
}
