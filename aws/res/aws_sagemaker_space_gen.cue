package res

import "list"

#aws_sagemaker_space: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_space")
	close({
		arn?:                      string
		domain_id!:                string
		home_efs_file_system_uid?: string
		id?:                       string
		region?:                   string
		space_display_name?:       string
		ownership_settings?: matchN(1, [#ownership_settings, list.MaxItems(1) & [...#ownership_settings]])
		space_name!: string
		space_settings?: matchN(1, [#space_settings, list.MaxItems(1) & [...#space_settings]])
		space_sharing_settings?: matchN(1, [#space_sharing_settings, list.MaxItems(1) & [...#space_sharing_settings]])
		tags?: [string]:     string
		tags_all?: [string]: string
		url?: string
	})

	#ownership_settings: close({
		owner_user_profile_name!: string
	})

	#space_settings: close({
		code_editor_app_settings?: matchN(1, [_#defs."/$defs/space_settings/$defs/code_editor_app_settings", list.MaxItems(1) & [..._#defs."/$defs/space_settings/$defs/code_editor_app_settings"]])
		custom_file_system?: matchN(1, [_#defs."/$defs/space_settings/$defs/custom_file_system", [..._#defs."/$defs/space_settings/$defs/custom_file_system"]])
		jupyter_lab_app_settings?: matchN(1, [_#defs."/$defs/space_settings/$defs/jupyter_lab_app_settings", list.MaxItems(1) & [..._#defs."/$defs/space_settings/$defs/jupyter_lab_app_settings"]])
		jupyter_server_app_settings?: matchN(1, [_#defs."/$defs/space_settings/$defs/jupyter_server_app_settings", list.MaxItems(1) & [..._#defs."/$defs/space_settings/$defs/jupyter_server_app_settings"]])
		kernel_gateway_app_settings?: matchN(1, [_#defs."/$defs/space_settings/$defs/kernel_gateway_app_settings", list.MaxItems(1) & [..._#defs."/$defs/space_settings/$defs/kernel_gateway_app_settings"]])
		space_storage_settings?: matchN(1, [_#defs."/$defs/space_settings/$defs/space_storage_settings", list.MaxItems(1) & [..._#defs."/$defs/space_settings/$defs/space_storage_settings"]])
		app_type?: string
	})

	#space_sharing_settings: close({
		sharing_type!: string
	})

	_#defs: "/$defs/space_settings/$defs/code_editor_app_settings": close({
		app_lifecycle_management?: matchN(1, [_#defs."/$defs/space_settings/$defs/code_editor_app_settings/$defs/app_lifecycle_management", list.MaxItems(1) & [..._#defs."/$defs/space_settings/$defs/code_editor_app_settings/$defs/app_lifecycle_management"]])
		default_resource_spec?: matchN(1, [_#defs."/$defs/space_settings/$defs/code_editor_app_settings/$defs/default_resource_spec", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/space_settings/$defs/code_editor_app_settings/$defs/default_resource_spec"]])
	})

	_#defs: "/$defs/space_settings/$defs/code_editor_app_settings/$defs/app_lifecycle_management": close({
		idle_settings?: matchN(1, [_#defs."/$defs/space_settings/$defs/code_editor_app_settings/$defs/app_lifecycle_management/$defs/idle_settings", list.MaxItems(1) & [..._#defs."/$defs/space_settings/$defs/code_editor_app_settings/$defs/app_lifecycle_management/$defs/idle_settings"]])
	})

	_#defs: "/$defs/space_settings/$defs/code_editor_app_settings/$defs/app_lifecycle_management/$defs/idle_settings": close({
		idle_timeout_in_minutes?: number
	})

	_#defs: "/$defs/space_settings/$defs/code_editor_app_settings/$defs/default_resource_spec": close({
		instance_type?:                 string
		lifecycle_config_arn?:          string
		sagemaker_image_arn?:           string
		sagemaker_image_version_alias?: string
		sagemaker_image_version_arn?:   string
	})

	_#defs: "/$defs/space_settings/$defs/custom_file_system": close({
		efs_file_system?: matchN(1, [_#defs."/$defs/space_settings/$defs/custom_file_system/$defs/efs_file_system", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/space_settings/$defs/custom_file_system/$defs/efs_file_system"]])
	})

	_#defs: "/$defs/space_settings/$defs/custom_file_system/$defs/efs_file_system": close({
		file_system_id!: string
	})

	_#defs: "/$defs/space_settings/$defs/jupyter_lab_app_settings": close({
		app_lifecycle_management?: matchN(1, [_#defs."/$defs/space_settings/$defs/jupyter_lab_app_settings/$defs/app_lifecycle_management", list.MaxItems(1) & [..._#defs."/$defs/space_settings/$defs/jupyter_lab_app_settings/$defs/app_lifecycle_management"]])
		code_repository?: matchN(1, [_#defs."/$defs/space_settings/$defs/jupyter_lab_app_settings/$defs/code_repository", list.MaxItems(10) & [..._#defs."/$defs/space_settings/$defs/jupyter_lab_app_settings/$defs/code_repository"]])
		default_resource_spec?: matchN(1, [_#defs."/$defs/space_settings/$defs/jupyter_lab_app_settings/$defs/default_resource_spec", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/space_settings/$defs/jupyter_lab_app_settings/$defs/default_resource_spec"]])
	})

	_#defs: "/$defs/space_settings/$defs/jupyter_lab_app_settings/$defs/app_lifecycle_management": close({
		idle_settings?: matchN(1, [_#defs."/$defs/space_settings/$defs/jupyter_lab_app_settings/$defs/app_lifecycle_management/$defs/idle_settings", list.MaxItems(1) & [..._#defs."/$defs/space_settings/$defs/jupyter_lab_app_settings/$defs/app_lifecycle_management/$defs/idle_settings"]])
	})

	_#defs: "/$defs/space_settings/$defs/jupyter_lab_app_settings/$defs/app_lifecycle_management/$defs/idle_settings": close({
		idle_timeout_in_minutes?: number
	})

	_#defs: "/$defs/space_settings/$defs/jupyter_lab_app_settings/$defs/code_repository": close({
		repository_url!: string
	})

	_#defs: "/$defs/space_settings/$defs/jupyter_lab_app_settings/$defs/default_resource_spec": close({
		instance_type?:                 string
		lifecycle_config_arn?:          string
		sagemaker_image_arn?:           string
		sagemaker_image_version_alias?: string
		sagemaker_image_version_arn?:   string
	})

	_#defs: "/$defs/space_settings/$defs/jupyter_server_app_settings": close({
		code_repository?: matchN(1, [_#defs."/$defs/space_settings/$defs/jupyter_server_app_settings/$defs/code_repository", list.MaxItems(10) & [..._#defs."/$defs/space_settings/$defs/jupyter_server_app_settings/$defs/code_repository"]])
		default_resource_spec?: matchN(1, [_#defs."/$defs/space_settings/$defs/jupyter_server_app_settings/$defs/default_resource_spec", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/space_settings/$defs/jupyter_server_app_settings/$defs/default_resource_spec"]])
		lifecycle_config_arns?: [...string]
	})

	_#defs: "/$defs/space_settings/$defs/jupyter_server_app_settings/$defs/code_repository": close({
		repository_url!: string
	})

	_#defs: "/$defs/space_settings/$defs/jupyter_server_app_settings/$defs/default_resource_spec": close({
		instance_type?:                 string
		lifecycle_config_arn?:          string
		sagemaker_image_arn?:           string
		sagemaker_image_version_alias?: string
		sagemaker_image_version_arn?:   string
	})

	_#defs: "/$defs/space_settings/$defs/kernel_gateway_app_settings": close({
		custom_image?: matchN(1, [_#defs."/$defs/space_settings/$defs/kernel_gateway_app_settings/$defs/custom_image", list.MaxItems(200) & [..._#defs."/$defs/space_settings/$defs/kernel_gateway_app_settings/$defs/custom_image"]])
		default_resource_spec?: matchN(1, [_#defs."/$defs/space_settings/$defs/kernel_gateway_app_settings/$defs/default_resource_spec", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/space_settings/$defs/kernel_gateway_app_settings/$defs/default_resource_spec"]])
		lifecycle_config_arns?: [...string]
	})

	_#defs: "/$defs/space_settings/$defs/kernel_gateway_app_settings/$defs/custom_image": close({
		app_image_config_name!: string
		image_name!:            string
		image_version_number?:  number
	})

	_#defs: "/$defs/space_settings/$defs/kernel_gateway_app_settings/$defs/default_resource_spec": close({
		instance_type?:                 string
		lifecycle_config_arn?:          string
		sagemaker_image_arn?:           string
		sagemaker_image_version_alias?: string
		sagemaker_image_version_arn?:   string
	})

	_#defs: "/$defs/space_settings/$defs/space_storage_settings": close({
		ebs_storage_settings?: matchN(1, [_#defs."/$defs/space_settings/$defs/space_storage_settings/$defs/ebs_storage_settings", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/space_settings/$defs/space_storage_settings/$defs/ebs_storage_settings"]])
	})

	_#defs: "/$defs/space_settings/$defs/space_storage_settings/$defs/ebs_storage_settings": close({
		ebs_volume_size_in_gb!: number
	})
}
