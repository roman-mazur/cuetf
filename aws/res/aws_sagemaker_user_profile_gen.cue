package res

import "list"

#aws_sagemaker_user_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_user_profile")
	close({
		arn?:                      string
		domain_id!:                string
		home_efs_file_system_uid?: string
		id?:                       string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                         string
		single_sign_on_user_identifier?: string
		user_settings?: matchN(1, [#user_settings, list.MaxItems(1) & [...#user_settings]])
		single_sign_on_user_value?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		user_profile_name!: string
	})

	#user_settings: close({
		canvas_app_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/canvas_app_settings", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/canvas_app_settings"]])
		code_editor_app_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/code_editor_app_settings", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/code_editor_app_settings"]])
		auto_mount_home_efs?: string
		default_landing_uri?: string
		execution_role!:      string
		custom_file_system_config?: matchN(1, [_#defs."/$defs/user_settings/$defs/custom_file_system_config", [..._#defs."/$defs/user_settings/$defs/custom_file_system_config"]])
		security_groups?: [...string]
		custom_posix_user_config?: matchN(1, [_#defs."/$defs/user_settings/$defs/custom_posix_user_config", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/custom_posix_user_config"]])
		jupyter_lab_app_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/jupyter_lab_app_settings", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/jupyter_lab_app_settings"]])
		jupyter_server_app_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/jupyter_server_app_settings", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/jupyter_server_app_settings"]])
		kernel_gateway_app_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/kernel_gateway_app_settings", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/kernel_gateway_app_settings"]])
		r_session_app_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/r_session_app_settings", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/r_session_app_settings"]])
		r_studio_server_pro_app_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/r_studio_server_pro_app_settings", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/r_studio_server_pro_app_settings"]])
		studio_web_portal?: string
		sharing_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/sharing_settings", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/sharing_settings"]])
		space_storage_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/space_storage_settings", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/space_storage_settings"]])
		studio_web_portal_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/studio_web_portal_settings", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/studio_web_portal_settings"]])
		tensor_board_app_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/tensor_board_app_settings", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/tensor_board_app_settings"]])
	})

	_#defs: "/$defs/user_settings/$defs/canvas_app_settings": close({
		direct_deploy_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/canvas_app_settings/$defs/direct_deploy_settings", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/canvas_app_settings/$defs/direct_deploy_settings"]])
		emr_serverless_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/canvas_app_settings/$defs/emr_serverless_settings", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/canvas_app_settings/$defs/emr_serverless_settings"]])
		generative_ai_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/canvas_app_settings/$defs/generative_ai_settings", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/canvas_app_settings/$defs/generative_ai_settings"]])
		identity_provider_oauth_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/canvas_app_settings/$defs/identity_provider_oauth_settings", list.MaxItems(20) & [..._#defs."/$defs/user_settings/$defs/canvas_app_settings/$defs/identity_provider_oauth_settings"]])
		kendra_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/canvas_app_settings/$defs/kendra_settings", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/canvas_app_settings/$defs/kendra_settings"]])
		model_register_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/canvas_app_settings/$defs/model_register_settings", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/canvas_app_settings/$defs/model_register_settings"]])
		time_series_forecasting_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/canvas_app_settings/$defs/time_series_forecasting_settings", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/canvas_app_settings/$defs/time_series_forecasting_settings"]])
		workspace_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/canvas_app_settings/$defs/workspace_settings", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/canvas_app_settings/$defs/workspace_settings"]])
	})

	_#defs: "/$defs/user_settings/$defs/canvas_app_settings/$defs/direct_deploy_settings": close({
		status?: string
	})

	_#defs: "/$defs/user_settings/$defs/canvas_app_settings/$defs/emr_serverless_settings": close({
		execution_role_arn?: string
		status?:             string
	})

	_#defs: "/$defs/user_settings/$defs/canvas_app_settings/$defs/generative_ai_settings": close({
		amazon_bedrock_role_arn?: string
	})

	_#defs: "/$defs/user_settings/$defs/canvas_app_settings/$defs/identity_provider_oauth_settings": close({
		data_source_name?: string
		secret_arn!:       string
		status?:           string
	})

	_#defs: "/$defs/user_settings/$defs/canvas_app_settings/$defs/kendra_settings": close({
		status?: string
	})

	_#defs: "/$defs/user_settings/$defs/canvas_app_settings/$defs/model_register_settings": close({
		cross_account_model_register_role_arn?: string
		status?:                                string
	})

	_#defs: "/$defs/user_settings/$defs/canvas_app_settings/$defs/time_series_forecasting_settings": close({
		amazon_forecast_role_arn?: string
		status?:                   string
	})

	_#defs: "/$defs/user_settings/$defs/canvas_app_settings/$defs/workspace_settings": close({
		s3_artifact_path?: string
		s3_kms_key_id?:    string
	})

	_#defs: "/$defs/user_settings/$defs/code_editor_app_settings": close({
		app_lifecycle_management?: matchN(1, [_#defs."/$defs/user_settings/$defs/code_editor_app_settings/$defs/app_lifecycle_management", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/code_editor_app_settings/$defs/app_lifecycle_management"]])
		custom_image?: matchN(1, [_#defs."/$defs/user_settings/$defs/code_editor_app_settings/$defs/custom_image", list.MaxItems(200) & [..._#defs."/$defs/user_settings/$defs/code_editor_app_settings/$defs/custom_image"]])
		default_resource_spec?: matchN(1, [_#defs."/$defs/user_settings/$defs/code_editor_app_settings/$defs/default_resource_spec", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/code_editor_app_settings/$defs/default_resource_spec"]])
		built_in_lifecycle_config_arn?: string
		lifecycle_config_arns?: [...string]
	})

	_#defs: "/$defs/user_settings/$defs/code_editor_app_settings/$defs/app_lifecycle_management": close({
		idle_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/code_editor_app_settings/$defs/app_lifecycle_management/$defs/idle_settings", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/code_editor_app_settings/$defs/app_lifecycle_management/$defs/idle_settings"]])
	})

	_#defs: "/$defs/user_settings/$defs/code_editor_app_settings/$defs/app_lifecycle_management/$defs/idle_settings": close({
		idle_timeout_in_minutes?:     number
		lifecycle_management?:        string
		max_idle_timeout_in_minutes?: number
		min_idle_timeout_in_minutes?: number
	})

	_#defs: "/$defs/user_settings/$defs/code_editor_app_settings/$defs/custom_image": close({
		app_image_config_name!: string
		image_name!:            string
		image_version_number?:  number
	})

	_#defs: "/$defs/user_settings/$defs/code_editor_app_settings/$defs/default_resource_spec": close({
		instance_type?:                 string
		lifecycle_config_arn?:          string
		sagemaker_image_arn?:           string
		sagemaker_image_version_alias?: string
		sagemaker_image_version_arn?:   string
	})

	_#defs: "/$defs/user_settings/$defs/custom_file_system_config": close({
		efs_file_system_config?: matchN(1, [_#defs."/$defs/user_settings/$defs/custom_file_system_config/$defs/efs_file_system_config", [..._#defs."/$defs/user_settings/$defs/custom_file_system_config/$defs/efs_file_system_config"]])
	})

	_#defs: "/$defs/user_settings/$defs/custom_file_system_config/$defs/efs_file_system_config": close({
		file_system_id!:   string
		file_system_path?: string
	})

	_#defs: "/$defs/user_settings/$defs/custom_posix_user_config": close({
		gid!: number
		uid!: number
	})

	_#defs: "/$defs/user_settings/$defs/jupyter_lab_app_settings": close({
		app_lifecycle_management?: matchN(1, [_#defs."/$defs/user_settings/$defs/jupyter_lab_app_settings/$defs/app_lifecycle_management", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/jupyter_lab_app_settings/$defs/app_lifecycle_management"]])
		code_repository?: matchN(1, [_#defs."/$defs/user_settings/$defs/jupyter_lab_app_settings/$defs/code_repository", list.MaxItems(10) & [..._#defs."/$defs/user_settings/$defs/jupyter_lab_app_settings/$defs/code_repository"]])
		custom_image?: matchN(1, [_#defs."/$defs/user_settings/$defs/jupyter_lab_app_settings/$defs/custom_image", list.MaxItems(200) & [..._#defs."/$defs/user_settings/$defs/jupyter_lab_app_settings/$defs/custom_image"]])
		default_resource_spec?: matchN(1, [_#defs."/$defs/user_settings/$defs/jupyter_lab_app_settings/$defs/default_resource_spec", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/jupyter_lab_app_settings/$defs/default_resource_spec"]])
		emr_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/jupyter_lab_app_settings/$defs/emr_settings", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/jupyter_lab_app_settings/$defs/emr_settings"]])
		built_in_lifecycle_config_arn?: string
		lifecycle_config_arns?: [...string]
	})

	_#defs: "/$defs/user_settings/$defs/jupyter_lab_app_settings/$defs/app_lifecycle_management": close({
		idle_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/jupyter_lab_app_settings/$defs/app_lifecycle_management/$defs/idle_settings", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/jupyter_lab_app_settings/$defs/app_lifecycle_management/$defs/idle_settings"]])
	})

	_#defs: "/$defs/user_settings/$defs/jupyter_lab_app_settings/$defs/app_lifecycle_management/$defs/idle_settings": close({
		idle_timeout_in_minutes?:     number
		lifecycle_management?:        string
		max_idle_timeout_in_minutes?: number
		min_idle_timeout_in_minutes?: number
	})

	_#defs: "/$defs/user_settings/$defs/jupyter_lab_app_settings/$defs/code_repository": close({
		repository_url!: string
	})

	_#defs: "/$defs/user_settings/$defs/jupyter_lab_app_settings/$defs/custom_image": close({
		app_image_config_name!: string
		image_name!:            string
		image_version_number?:  number
	})

	_#defs: "/$defs/user_settings/$defs/jupyter_lab_app_settings/$defs/default_resource_spec": close({
		instance_type?:                 string
		lifecycle_config_arn?:          string
		sagemaker_image_arn?:           string
		sagemaker_image_version_alias?: string
		sagemaker_image_version_arn?:   string
	})

	_#defs: "/$defs/user_settings/$defs/jupyter_lab_app_settings/$defs/emr_settings": close({
		assumable_role_arns?: [...string]
		execution_role_arns?: [...string]
	})

	_#defs: "/$defs/user_settings/$defs/jupyter_server_app_settings": close({
		code_repository?: matchN(1, [_#defs."/$defs/user_settings/$defs/jupyter_server_app_settings/$defs/code_repository", list.MaxItems(10) & [..._#defs."/$defs/user_settings/$defs/jupyter_server_app_settings/$defs/code_repository"]])
		default_resource_spec?: matchN(1, [_#defs."/$defs/user_settings/$defs/jupyter_server_app_settings/$defs/default_resource_spec", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/jupyter_server_app_settings/$defs/default_resource_spec"]])
		lifecycle_config_arns?: [...string]
	})

	_#defs: "/$defs/user_settings/$defs/jupyter_server_app_settings/$defs/code_repository": close({
		repository_url!: string
	})

	_#defs: "/$defs/user_settings/$defs/jupyter_server_app_settings/$defs/default_resource_spec": close({
		instance_type?:                 string
		lifecycle_config_arn?:          string
		sagemaker_image_arn?:           string
		sagemaker_image_version_alias?: string
		sagemaker_image_version_arn?:   string
	})

	_#defs: "/$defs/user_settings/$defs/kernel_gateway_app_settings": close({
		custom_image?: matchN(1, [_#defs."/$defs/user_settings/$defs/kernel_gateway_app_settings/$defs/custom_image", list.MaxItems(200) & [..._#defs."/$defs/user_settings/$defs/kernel_gateway_app_settings/$defs/custom_image"]])
		default_resource_spec?: matchN(1, [_#defs."/$defs/user_settings/$defs/kernel_gateway_app_settings/$defs/default_resource_spec", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/kernel_gateway_app_settings/$defs/default_resource_spec"]])
		lifecycle_config_arns?: [...string]
	})

	_#defs: "/$defs/user_settings/$defs/kernel_gateway_app_settings/$defs/custom_image": close({
		app_image_config_name!: string
		image_name!:            string
		image_version_number?:  number
	})

	_#defs: "/$defs/user_settings/$defs/kernel_gateway_app_settings/$defs/default_resource_spec": close({
		instance_type?:                 string
		lifecycle_config_arn?:          string
		sagemaker_image_arn?:           string
		sagemaker_image_version_alias?: string
		sagemaker_image_version_arn?:   string
	})

	_#defs: "/$defs/user_settings/$defs/r_session_app_settings": close({
		custom_image?: matchN(1, [_#defs."/$defs/user_settings/$defs/r_session_app_settings/$defs/custom_image", list.MaxItems(200) & [..._#defs."/$defs/user_settings/$defs/r_session_app_settings/$defs/custom_image"]])
		default_resource_spec?: matchN(1, [_#defs."/$defs/user_settings/$defs/r_session_app_settings/$defs/default_resource_spec", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/r_session_app_settings/$defs/default_resource_spec"]])
	})

	_#defs: "/$defs/user_settings/$defs/r_session_app_settings/$defs/custom_image": close({
		app_image_config_name!: string
		image_name!:            string
		image_version_number?:  number
	})

	_#defs: "/$defs/user_settings/$defs/r_session_app_settings/$defs/default_resource_spec": close({
		instance_type?:                 string
		lifecycle_config_arn?:          string
		sagemaker_image_arn?:           string
		sagemaker_image_version_alias?: string
		sagemaker_image_version_arn?:   string
	})

	_#defs: "/$defs/user_settings/$defs/r_studio_server_pro_app_settings": close({
		access_status?: string
		user_group?:    string
	})

	_#defs: "/$defs/user_settings/$defs/sharing_settings": close({
		notebook_output_option?: string
		s3_kms_key_id?:          string
		s3_output_path?:         string
	})

	_#defs: "/$defs/user_settings/$defs/space_storage_settings": close({
		default_ebs_storage_settings?: matchN(1, [_#defs."/$defs/user_settings/$defs/space_storage_settings/$defs/default_ebs_storage_settings", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/space_storage_settings/$defs/default_ebs_storage_settings"]])
	})

	_#defs: "/$defs/user_settings/$defs/space_storage_settings/$defs/default_ebs_storage_settings": close({
		default_ebs_volume_size_in_gb!: number
		maximum_ebs_volume_size_in_gb!: number
	})

	_#defs: "/$defs/user_settings/$defs/studio_web_portal_settings": close({
		hidden_app_types?: [...string]
		hidden_instance_types?: [...string]
		hidden_ml_tools?: [...string]
	})

	_#defs: "/$defs/user_settings/$defs/tensor_board_app_settings": close({
		default_resource_spec?: matchN(1, [_#defs."/$defs/user_settings/$defs/tensor_board_app_settings/$defs/default_resource_spec", list.MaxItems(1) & [..._#defs."/$defs/user_settings/$defs/tensor_board_app_settings/$defs/default_resource_spec"]])
	})

	_#defs: "/$defs/user_settings/$defs/tensor_board_app_settings/$defs/default_resource_spec": close({
		instance_type?:                 string
		lifecycle_config_arn?:          string
		sagemaker_image_arn?:           string
		sagemaker_image_version_alias?: string
		sagemaker_image_version_arn?:   string
	})
}
