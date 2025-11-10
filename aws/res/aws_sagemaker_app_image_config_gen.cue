package res

import "list"

#aws_sagemaker_app_image_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_app_image_config")
	close({
		app_image_config_name!: string
		arn?:                   string
		id?:                    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		code_editor_app_image_config?: matchN(1, [#code_editor_app_image_config, list.MaxItems(1) & [...#code_editor_app_image_config]])
		jupyter_lab_image_config?: matchN(1, [#jupyter_lab_image_config, list.MaxItems(1) & [...#jupyter_lab_image_config]])
		kernel_gateway_image_config?: matchN(1, [#kernel_gateway_image_config, list.MaxItems(1) & [...#kernel_gateway_image_config]])
	})

	#code_editor_app_image_config: close({
		container_config?: matchN(1, [_#defs."/$defs/code_editor_app_image_config/$defs/container_config", list.MaxItems(1) & [..._#defs."/$defs/code_editor_app_image_config/$defs/container_config"]])
		file_system_config?: matchN(1, [_#defs."/$defs/code_editor_app_image_config/$defs/file_system_config", list.MaxItems(1) & [..._#defs."/$defs/code_editor_app_image_config/$defs/file_system_config"]])
	})

	#jupyter_lab_image_config: close({
		container_config?: matchN(1, [_#defs."/$defs/jupyter_lab_image_config/$defs/container_config", list.MaxItems(1) & [..._#defs."/$defs/jupyter_lab_image_config/$defs/container_config"]])
		file_system_config?: matchN(1, [_#defs."/$defs/jupyter_lab_image_config/$defs/file_system_config", list.MaxItems(1) & [..._#defs."/$defs/jupyter_lab_image_config/$defs/file_system_config"]])
	})

	#kernel_gateway_image_config: close({
		file_system_config?: matchN(1, [_#defs."/$defs/kernel_gateway_image_config/$defs/file_system_config", list.MaxItems(1) & [..._#defs."/$defs/kernel_gateway_image_config/$defs/file_system_config"]])
		kernel_spec!: matchN(1, [_#defs."/$defs/kernel_gateway_image_config/$defs/kernel_spec", list.MaxItems(5) & [_, ...] & [..._#defs."/$defs/kernel_gateway_image_config/$defs/kernel_spec"]])
	})

	_#defs: "/$defs/code_editor_app_image_config/$defs/container_config": close({
		container_arguments?: [...string]
		container_entrypoint?: [...string]
		container_environment_variables?: [string]: string
	})

	_#defs: "/$defs/code_editor_app_image_config/$defs/file_system_config": close({
		default_gid?: number
		default_uid?: number
		mount_path?:  string
	})

	_#defs: "/$defs/jupyter_lab_image_config/$defs/container_config": close({
		container_arguments?: [...string]
		container_entrypoint?: [...string]
		container_environment_variables?: [string]: string
	})

	_#defs: "/$defs/jupyter_lab_image_config/$defs/file_system_config": close({
		default_gid?: number
		default_uid?: number
		mount_path?:  string
	})

	_#defs: "/$defs/kernel_gateway_image_config/$defs/file_system_config": close({
		default_gid?: number
		default_uid?: number
		mount_path?:  string
	})

	_#defs: "/$defs/kernel_gateway_image_config/$defs/kernel_spec": close({
		display_name?: string
		name!:         string
	})
}
