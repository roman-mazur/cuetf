package data

#aws_efs_mount_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_efs_mount_target")
	access_point_id?:        string
	availability_zone_id?:   string
	availability_zone_name?: string
	dns_name?:               string
	file_system_arn?:        string
	file_system_id?:         string
	id?:                     string
	ip_address?:             string
	mount_target_dns_name?:  string
	mount_target_id?:        string
	network_interface_id?:   string
	owner_id?:               string
	security_groups?: [...string]
	subnet_id?: string
}
