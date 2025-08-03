package res

import "list"

#aws_efs_replication_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_efs_replication_configuration")
	close({
		creation_time?: string
		destination?: matchN(1, [#destination, list.MaxItems(1) & [_, ...] & [...#destination]])
		timeouts?:                        #timeouts
		id?:                              string
		original_source_file_system_arn?: string
		region?:                          string
		source_file_system_arn?:          string
		source_file_system_id!:           string
		source_file_system_region?:       string
	})

	#destination: close({
		availability_zone_name?: string
		file_system_id?:         string
		kms_key_id?:             string
		region?:                 string
		status?:                 string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
