package res

#aws_rds_cluster_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_rds_cluster_instance")
	apply_immediately?:                     bool
	arn?:                                   string
	auto_minor_version_upgrade?:            bool
	availability_zone?:                     string
	ca_cert_identifier?:                    string
	cluster_identifier!:                    string
	copy_tags_to_snapshot?:                 bool
	custom_iam_instance_profile?:           string
	db_parameter_group_name?:               string
	db_subnet_group_name?:                  string
	dbi_resource_id?:                       string
	endpoint?:                              string
	engine!:                                string
	engine_version?:                        string
	engine_version_actual?:                 string
	id?:                                    string
	identifier?:                            string
	identifier_prefix?:                     string
	instance_class!:                        string
	kms_key_id?:                            string
	monitoring_interval?:                   number
	monitoring_role_arn?:                   string
	network_type?:                          string
	performance_insights_enabled?:          bool
	performance_insights_kms_key_id?:       string
	performance_insights_retention_period?: number
	port?:                                  number
	preferred_backup_window?:               string
	preferred_maintenance_window?:          string
	promotion_tier?:                        number
	publicly_accessible?:                   bool
	storage_encrypted?:                     bool
	tags?: [string]: string
	tags_all?: [string]: string
	writer?:   bool
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
