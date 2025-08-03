package res

import "list"

#aws_imagebuilder_container_recipe: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_imagebuilder_container_recipe")
	close({
		arn?:            string
		container_type!: string
		component?: matchN(1, [#component, [_, ...] & [...#component]])
		instance_configuration?: matchN(1, [#instance_configuration, list.MaxItems(1) & [...#instance_configuration]])
		date_created?:             string
		description?:              string
		dockerfile_template_data?: string
		dockerfile_template_uri?:  string
		encrypted?:                bool
		id?:                       string
		target_repository?: matchN(1, [#target_repository, list.MaxItems(1) & [_, ...] & [...#target_repository]])
		kms_key_id?:        string
		name!:              string
		owner?:             string
		parent_image!:      string
		platform?:          string
		platform_override?: string
		region?:            string
		tags?: [string]:     string
		tags_all?: [string]: string
		version!:           string
		working_directory?: string
	})

	#component: close({
		component_arn!: string
		parameter?: matchN(1, [_#defs."/$defs/component/$defs/parameter", [..._#defs."/$defs/component/$defs/parameter"]])
	})

	#instance_configuration: close({
		image?: string
		block_device_mapping?: matchN(1, [_#defs."/$defs/instance_configuration/$defs/block_device_mapping", [..._#defs."/$defs/instance_configuration/$defs/block_device_mapping"]])
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
		device_name?:  string
		no_device?:    bool
		virtual_name?: string
		ebs?: matchN(1, [_#defs."/$defs/instance_configuration/$defs/block_device_mapping/$defs/ebs", list.MaxItems(1) & [..._#defs."/$defs/instance_configuration/$defs/block_device_mapping/$defs/ebs"]])
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
