package res

import "list"

#aws_imagebuilder_container_recipe: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_imagebuilder_container_recipe")
	close({
		arn?: string
		component!: matchN(1, [#component, [_, ...] & [...#component]])
		container_type!:           string
		date_created?:             string
		description?:              string
		dockerfile_template_data?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		dockerfile_template_uri?: string
		encrypted?:               bool
		id?:                      string
		kms_key_id?:              string
		name!:                    string
		instance_configuration?: matchN(1, [#instance_configuration, list.MaxItems(1) & [...#instance_configuration]])
		owner?:        string
		parent_image!: string
		target_repository!: matchN(1, [#target_repository, list.MaxItems(1) & [_, ...] & [...#target_repository]])
		platform?:          string
		platform_override?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		version!:           string
		working_directory?: string
	})

	#component: close({
		parameter?: matchN(1, [_#defs."/$defs/component/$defs/parameter", [..._#defs."/$defs/component/$defs/parameter"]])
		component_arn!: string
	})

	#instance_configuration: close({
		block_device_mapping?: matchN(1, [_#defs."/$defs/instance_configuration/$defs/block_device_mapping", [..._#defs."/$defs/instance_configuration/$defs/block_device_mapping"]])
		image?: string
	})

	#target_repository: close({
		repository_name!: string
		service!:         string
	})

	_#defs: "/$defs/component/$defs/parameter": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/instance_configuration/$defs/block_device_mapping": close({
		ebs?: matchN(1, [_#defs."/$defs/instance_configuration/$defs/block_device_mapping/$defs/ebs", list.MaxItems(1) & [..._#defs."/$defs/instance_configuration/$defs/block_device_mapping/$defs/ebs"]])
		device_name?:  string
		no_device?:    bool
		virtual_name?: string
	})

	_#defs: "/$defs/instance_configuration/$defs/block_device_mapping/$defs/ebs": close({
		delete_on_termination?: string
		encrypted?:             string
		iops?:                  number
		kms_key_id?:            string
		snapshot_id?:           string
		throughput?:            number
		volume_size?:           number
		volume_type?:           string
	})
}
