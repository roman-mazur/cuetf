package res

#aws_neptune_cluster_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_neptune_cluster_instance")
	address?:                      string
	apply_immediately?:            bool
	arn?:                          string
	auto_minor_version_upgrade?:   bool
	availability_zone?:            string
	cluster_identifier:            string
	dbi_resource_id?:              string
	endpoint?:                     string
	engine?:                       string
	engine_version?:               string
	id?:                           string
	identifier?:                   string
	identifier_prefix?:            string
	instance_class:                string
	kms_key_arn?:                  string
	neptune_parameter_group_name?: string
	neptune_subnet_group_name?:    string
	port?:                         number
	preferred_backup_window?:      string
	preferred_maintenance_window?: string
	promotion_tier?:               number
	publicly_accessible?:          bool
	storage_encrypted?:            bool
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
