package data

#aws_dms_replication_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dms_replication_instance")
	allocated_storage?:            number
	auto_minor_version_upgrade?:   bool
	availability_zone?:            string
	engine_version?:               string
	id?:                           string
	kms_key_arn?:                  string
	multi_az?:                     bool
	network_type?:                 string
	preferred_maintenance_window?: string
	publicly_accessible?:          bool
	replication_instance_arn?:     string
	replication_instance_class?:   string
	replication_instance_id:       string
	replication_instance_private_ips?: [...string]
	replication_instance_public_ips?: [...string]
	replication_subnet_group_id?: string
	tags?: [string]: string
	vpc_security_group_ids?: [...string]
}
