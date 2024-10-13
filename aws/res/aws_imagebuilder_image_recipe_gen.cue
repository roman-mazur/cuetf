package res

import "list"

#aws_imagebuilder_image_recipe: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_imagebuilder_image_recipe")
	arn?:          string
	date_created?: string
	description?:  string
	id?:           string
	name!:         string
	owner?:        string
	parent_image!: string
	platform?:     string
	tags?: [string]:     string
	tags_all?: [string]: string
	user_data_base64?:  string
	version!:           string
	working_directory?: string
	block_device_mapping?: #block_device_mapping | [...#block_device_mapping]
	component?: #component | [_, ...] & [...#component]
	systems_manager_agent?: #systems_manager_agent | list.MaxItems(1) & [...#systems_manager_agent]

	#block_device_mapping: {
		device_name?:  string
		no_device?:    bool
		virtual_name?: string
		ebs?: #block_device_mapping.#ebs | list.MaxItems(1) & [...#block_device_mapping.#ebs]

		#ebs: {
			delete_on_termination?: string
			encrypted?:             string
			iops?:                  number
			kms_key_id?:            string
			snapshot_id?:           string
			throughput?:            number
			volume_size?:           number
			volume_type?:           string
		}
	}

	#component: {
		component_arn!: string
		parameter?: #component.#parameter | [...#component.#parameter]

		#parameter: {
			name!:  string
			value!: string
		}
	}

	#systems_manager_agent: uninstall_after_build!: bool
}
