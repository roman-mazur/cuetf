package res

import "list"

#aws_efs_replication_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_efs_replication_configuration")
	creation_time?:                   string
	id?:                              string
	original_source_file_system_arn?: string
	source_file_system_arn?:          string
	source_file_system_id!:           string
	source_file_system_region?:       string
	destination?: #destination | list.MaxItems(1) & [_, ...] & [...#destination]
	timeouts?: #timeouts

	#destination: {
		availability_zone_name?: string
		file_system_id?:         string
		kms_key_id?:             string
		region?:                 string
		status?:                 string
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
