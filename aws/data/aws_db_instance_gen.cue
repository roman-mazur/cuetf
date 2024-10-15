package data

#aws_db_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_db_instance")
	address?:                    string
	allocated_storage?:          number
	auto_minor_version_upgrade?: bool
	availability_zone?:          string
	backup_retention_period?:    number
	ca_cert_identifier?:         string
	db_cluster_identifier?:      string
	db_instance_arn?:            string
	db_instance_class?:          string
	db_instance_identifier?:     string
	db_instance_port?:           number
	db_name?:                    string
	db_parameter_groups?: [...string]
	db_subnet_group?: string
	enabled_cloudwatch_logs_exports?: [...string]
	endpoint?:       string
	engine?:         string
	engine_version?: string
	hosted_zone_id?: string
	id?:             string
	iops?:           number
	kms_key_id?:     string
	license_model?:  string
	master_user_secret?: [...{
		kms_key_id?:    string
		secret_arn?:    string
		secret_status?: string
	}]
	master_username?:       string
	max_allocated_storage?: number
	monitoring_interval?:   number
	monitoring_role_arn?:   string
	multi_az?:              bool
	network_type?:          string
	option_group_memberships?: [...string]
	port?:                         number
	preferred_backup_window?:      string
	preferred_maintenance_window?: string
	publicly_accessible?:          bool
	replicate_source_db?:          string
	resource_id?:                  string
	storage_encrypted?:            bool
	storage_throughput?:           number
	storage_type?:                 string
	tags?: [string]: string
	timezone?: string
	vpc_security_groups?: [...string]
}
