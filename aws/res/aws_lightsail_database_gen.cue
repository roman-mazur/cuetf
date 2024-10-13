package res

#aws_lightsail_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lightsail_database")
	apply_immediately?:            bool
	arn?:                          string
	availability_zone?:            string
	backup_retention_enabled?:     bool
	blueprint_id!:                 string
	bundle_id!:                    string
	ca_certificate_identifier?:    string
	cpu_count?:                    number
	created_at?:                   string
	disk_size?:                    number
	engine?:                       string
	engine_version?:               string
	final_snapshot_name?:          string
	id?:                           string
	master_database_name!:         string
	master_endpoint_address?:      string
	master_endpoint_port?:         number
	master_password!:              string
	master_username!:              string
	preferred_backup_window?:      string
	preferred_maintenance_window?: string
	publicly_accessible?:          bool
	ram_size?:                     number
	relational_database_name!:     string
	secondary_availability_zone?:  string
	skip_final_snapshot?:          bool
	support_code?:                 string
	tags?: [string]: string
	tags_all?: [string]: string
}
