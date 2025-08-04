package res

import "list"

#aws_imagebuilder_image_recipe: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_imagebuilder_image_recipe")
	close({
		arn?:          string
		date_created?: string
		description?:  string
		id?:           string
		name!:         string
		owner?:        string
		parent_image!: string
		platform?:     string
		block_device_mapping?: matchN(1, [#block_device_mapping, [...#block_device_mapping]])
		component?: matchN(1, [#component, [_, ...] & [...#component]])
		region?: string
		tags?: [string]: string
		systems_manager_agent?: matchN(1, [#systems_manager_agent, list.MaxItems(1) & [...#systems_manager_agent]])
		tags_all?: [string]: string
		user_data_base64?:  string
		version!:           string
		working_directory?: string
	})

	#block_device_mapping: close({
		ebs?: matchN(1, [_#defs."/$defs/block_device_mapping/$defs/ebs", list.MaxItems(1) & [..._#defs."/$defs/block_device_mapping/$defs/ebs"]])
		device_name?:  string
		no_device?:    bool
		virtual_name?: string
	})

	#component: close({
		parameter?: matchN(1, [_#defs."/$defs/component/$defs/parameter", [..._#defs."/$defs/component/$defs/parameter"]])
		component_arn!: string
	})

	#systems_manager_agent: close({
		uninstall_after_build!: bool
	})

	_#defs: "/$defs/block_device_mapping/$defs/ebs": close({
		delete_on_termination?: string
		encrypted?:             string
		iops?:                  number
		kms_key_id?:            string
		snapshot_id?:           string
		throughput?:            number
		volume_size?:           number
		volume_type?:           string
	})

	_#defs: "/$defs/component/$defs/parameter": close({
		name!:  string
		value!: string
	})
}
