package res

import "list"

#aws_efs_replication_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_efs_replication_configuration")
	close({
		creation_time?: string
		destination?: matchN(1, [#destination, list.MaxItems(1) & [_, ...] & [...#destination]])
		id?:                              string
		original_source_file_system_arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                    string
		source_file_system_arn?:    string
		source_file_system_id!:     string
		timeouts?:                  #timeouts
		source_file_system_region?: string
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
