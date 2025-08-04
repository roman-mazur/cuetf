package res

import "list"

#aws_sagemaker_device: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_device")
	close({
		agent_version?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		arn?:               string
		device_fleet_name!: string
		id?:                string
		device?: matchN(1, [#device, list.MaxItems(1) & [_, ...] & [...#device]])
	})

	#device: close({
		description?:    string
		device_name!:    string
		iot_thing_name?: string
	})
}
