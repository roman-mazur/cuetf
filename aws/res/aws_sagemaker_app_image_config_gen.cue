package res

import "list"

#aws_sagemaker_app_image_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sagemaker_app_image_config")
	app_image_config_name!: string
	arn?:                   string
	id?:                    string
	tags?: [string]: string
	tags_all?: [string]: string
	code_editor_app_image_config?: #code_editor_app_image_config | list.MaxItems(1) & [...#code_editor_app_image_config]
	jupyter_lab_image_config?: #jupyter_lab_image_config | list.MaxItems(1) & [...#jupyter_lab_image_config]
	kernel_gateway_image_config?: #kernel_gateway_image_config | list.MaxItems(1) & [...#kernel_gateway_image_config]

	#code_editor_app_image_config: {
		container_config?: #code_editor_app_image_config.#container_config | list.MaxItems(1) & [...#code_editor_app_image_config.#container_config]
		file_system_config?: #code_editor_app_image_config.#file_system_config | list.MaxItems(1) & [...#code_editor_app_image_config.#file_system_config]

		#container_config: {
			container_arguments?: [...string]
			container_entrypoint?: [...string]
			container_environment_variables?: [string]: string
		}

		#file_system_config: {
			default_gid?: number
			default_uid?: number
			mount_path?:  string
		}
	}

	#jupyter_lab_image_config: {
		container_config?: #jupyter_lab_image_config.#container_config | list.MaxItems(1) & [...#jupyter_lab_image_config.#container_config]
		file_system_config?: #jupyter_lab_image_config.#file_system_config | list.MaxItems(1) & [...#jupyter_lab_image_config.#file_system_config]

		#container_config: {
			container_arguments?: [...string]
			container_entrypoint?: [...string]
			container_environment_variables?: [string]: string
		}

		#file_system_config: {
			default_gid?: number
			default_uid?: number
			mount_path?:  string
		}
	}

	#kernel_gateway_image_config: {
		file_system_config?: #kernel_gateway_image_config.#file_system_config | list.MaxItems(1) & [...#kernel_gateway_image_config.#file_system_config]
		kernel_spec?: #kernel_gateway_image_config.#kernel_spec | list.MaxItems(5) & [_, ...] & [...#kernel_gateway_image_config.#kernel_spec]

		#file_system_config: {
			default_gid?: number
			default_uid?: number
			mount_path?:  string
		}

		#kernel_spec: {
			display_name?: string
			name!:         string
		}
	}
}
