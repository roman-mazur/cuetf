package res

#aws_efs_mount_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_efs_mount_target")
	availability_zone_id?:   string
	availability_zone_name?: string
	dns_name?:               string
	file_system_arn?:        string
	file_system_id:          string
	id?:                     string
	ip_address?:             string
	mount_target_dns_name?:  string
	network_interface_id?:   string
	owner_id?:               string
	security_groups?: [...string]
	subnet_id: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
