package res

import "list"

#aws_sagemaker_device_fleet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sagemaker_device_fleet")
	arn?:                   string
	description?:           string
	device_fleet_name!:     string
	enable_iot_role_alias?: bool
	id?:                    string
	iot_role_alias?:        string
	role_arn!:              string
	tags?: [string]: string
	tags_all?: [string]: string
	output_config?: #output_config | list.MaxItems(1) & [_, ...] & [...#output_config]

	#output_config: {
		kms_key_id?:         string
		s3_output_location!: string
	}
}
