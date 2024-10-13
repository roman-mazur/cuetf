package res

import "list"

#aws_efs_file_system: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_efs_file_system")
	arn?:                             string
	availability_zone_id?:            string
	availability_zone_name?:          string
	creation_token?:                  string
	dns_name?:                        string
	encrypted?:                       bool
	id?:                              string
	kms_key_id?:                      string
	name?:                            string
	number_of_mount_targets?:         number
	owner_id?:                        string
	performance_mode?:                string
	provisioned_throughput_in_mibps?: number
	size_in_bytes?: [...{
		value?:             number
		value_in_ia?:       number
		value_in_standard?: number
	}]
	tags?: [string]: string
	tags_all?: [string]: string
	throughput_mode?: string
	lifecycle_policy?: #lifecycle_policy | list.MaxItems(3) & [...#lifecycle_policy]
	protection?: #protection | list.MaxItems(1) & [...#protection]

	#lifecycle_policy: {
		transition_to_archive?:               string
		transition_to_ia?:                    string
		transition_to_primary_storage_class?: string
	}

	#protection: replication_overwrite?: string
}
