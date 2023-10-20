package data

#aws_efs_file_system: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_efs_file_system")
	arn?:                    string
	availability_zone_id?:   string
	availability_zone_name?: string
	creation_token?:         string
	dns_name?:               string
	encrypted?:              bool
	file_system_id?:         string
	id?:                     string
	kms_key_id?:             string
	lifecycle_policy?: [...{
		transition_to_ia?:                    string
		transition_to_primary_storage_class?: string
	}]
	name?:                            string
	performance_mode?:                string
	provisioned_throughput_in_mibps?: number
	size_in_bytes?:                   number
	tags?: [string]: string
	throughput_mode?: string
}
