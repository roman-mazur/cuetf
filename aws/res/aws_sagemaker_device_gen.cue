package res

import "list"

#aws_sagemaker_device: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_device")
	agent_version?:     string
	arn?:               string
	device_fleet_name!: string
	id?:                string
	device?: #device | list.MaxItems(1) & [_, ...] & [...#device]

	#device: {
		description?:    string
		device_name!:    string
		iot_thing_name?: string
	}
}
