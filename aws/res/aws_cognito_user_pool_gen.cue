package res

import "list"

#aws_cognito_user_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cognito_user_pool")
	close({
		alias_attributes?: [...string]
		arn?: string
		auto_verified_attributes?: [...string]
		creation_date?:              string
		custom_domain?:              string
		deletion_protection?:        string
		domain?:                     string
		email_verification_message?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                     string
		email_verification_subject?: string
		endpoint?:                   string
		estimated_number_of_users?:  number
		id?:                         string
		last_modified_date?:         string
		mfa_configuration?:          string
		name!:                       string
		sms_authentication_message?: string
		account_recovery_setting?: matchN(1, [#account_recovery_setting, list.MaxItems(1) & [...#account_recovery_setting]])
		sms_verification_message?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		user_pool_tier?: string
		username_attributes?: [...string]
		admin_create_user_config?: matchN(1, [#admin_create_user_config, list.MaxItems(1) & [...#admin_create_user_config]])
		device_configuration?: matchN(1, [#device_configuration, list.MaxItems(1) & [...#device_configuration]])
		email_configuration?: matchN(1, [#email_configuration, list.MaxItems(1) & [...#email_configuration]])
		email_mfa_configuration?: matchN(1, [#email_mfa_configuration, list.MaxItems(1) & [...#email_mfa_configuration]])
		lambda_config?: matchN(1, [#lambda_config, list.MaxItems(1) & [...#lambda_config]])
		password_policy?: matchN(1, [#password_policy, list.MaxItems(1) & [...#password_policy]])
		schema?: matchN(1, [#schema, list.MaxItems(50) & [...#schema]])
		sign_in_policy?: matchN(1, [#sign_in_policy, list.MaxItems(1) & [...#sign_in_policy]])
		sms_configuration?: matchN(1, [#sms_configuration, list.MaxItems(1) & [...#sms_configuration]])
		software_token_mfa_configuration?: matchN(1, [#software_token_mfa_configuration, list.MaxItems(1) & [...#software_token_mfa_configuration]])
		user_attribute_update_settings?: matchN(1, [#user_attribute_update_settings, list.MaxItems(1) & [...#user_attribute_update_settings]])
		user_pool_add_ons?: matchN(1, [#user_pool_add_ons, list.MaxItems(1) & [...#user_pool_add_ons]])
		username_configuration?: matchN(1, [#username_configuration, list.MaxItems(1) & [...#username_configuration]])
		verification_message_template?: matchN(1, [#verification_message_template, list.MaxItems(1) & [...#verification_message_template]])
		web_authn_configuration?: matchN(1, [#web_authn_configuration, list.MaxItems(1) & [...#web_authn_configuration]])
	})

	#account_recovery_setting: close({
		recovery_mechanism?: matchN(1, [_#defs."/$defs/account_recovery_setting/$defs/recovery_mechanism", list.MaxItems(2) & [..._#defs."/$defs/account_recovery_setting/$defs/recovery_mechanism"]])
	})

	#admin_create_user_config: close({
		invite_message_template?: matchN(1, [_#defs."/$defs/admin_create_user_config/$defs/invite_message_template", list.MaxItems(1) & [..._#defs."/$defs/admin_create_user_config/$defs/invite_message_template"]])
		allow_admin_create_user_only?: bool
	})

	#device_configuration: close({
		challenge_required_on_new_device?:      bool
		device_only_remembered_on_user_prompt?: bool
	})

	#email_configuration: close({
		configuration_set?:      string
		email_sending_account?:  string
		from_email_address?:     string
		reply_to_email_address?: string
		source_arn?:             string
	})

	#email_mfa_configuration: close({
		message?: string
		subject?: string
	})

	#lambda_config: close({
		create_auth_challenge?: string
		custom_message?:        string
		define_auth_challenge?: string
		kms_key_id?:            string
		custom_email_sender?: matchN(1, [_#defs."/$defs/lambda_config/$defs/custom_email_sender", list.MaxItems(1) & [..._#defs."/$defs/lambda_config/$defs/custom_email_sender"]])
		post_authentication?:  string
		post_confirmation?:    string
		pre_authentication?:   string
		pre_sign_up?:          string
		pre_token_generation?: string
		user_migration?:       string
		custom_sms_sender?: matchN(1, [_#defs."/$defs/lambda_config/$defs/custom_sms_sender", list.MaxItems(1) & [..._#defs."/$defs/lambda_config/$defs/custom_sms_sender"]])
		pre_token_generation_config?: matchN(1, [_#defs."/$defs/lambda_config/$defs/pre_token_generation_config", list.MaxItems(1) & [..._#defs."/$defs/lambda_config/$defs/pre_token_generation_config"]])
		verify_auth_challenge_response?: string
	})

	#password_policy: close({
		minimum_length?:                   number
		password_history_size?:            number
		require_lowercase?:                bool
		require_numbers?:                  bool
		require_symbols?:                  bool
		require_uppercase?:                bool
		temporary_password_validity_days?: number
	})

	#schema: close({
		number_attribute_constraints?: matchN(1, [_#defs."/$defs/schema/$defs/number_attribute_constraints", list.MaxItems(1) & [..._#defs."/$defs/schema/$defs/number_attribute_constraints"]])
		attribute_data_type!:      string
		developer_only_attribute?: bool
		mutable?:                  bool
		name!:                     string
		required?:                 bool
		string_attribute_constraints?: matchN(1, [_#defs."/$defs/schema/$defs/string_attribute_constraints", list.MaxItems(1) & [..._#defs."/$defs/schema/$defs/string_attribute_constraints"]])
	})

	#sign_in_policy: close({
		allowed_first_auth_factors?: [...string]
	})

	#sms_configuration: close({
		external_id!:    string
		sns_caller_arn!: string
		sns_region?:     string
	})

	#software_token_mfa_configuration: close({
		enabled!: bool
	})

	#user_attribute_update_settings: close({
		attributes_require_verification_before_update!: [...string]
	})

	#user_pool_add_ons: close({
		advanced_security_additional_flows?: matchN(1, [_#defs."/$defs/user_pool_add_ons/$defs/advanced_security_additional_flows", list.MaxItems(1) & [..._#defs."/$defs/user_pool_add_ons/$defs/advanced_security_additional_flows"]])
		advanced_security_mode!: string
	})

	#username_configuration: close({
		case_sensitive?: bool
	})

	#verification_message_template: close({
		default_email_option?:  string
		email_message?:         string
		email_message_by_link?: string
		email_subject?:         string
		email_subject_by_link?: string
		sms_message?:           string
	})

	#web_authn_configuration: close({
		relying_party_id?:  string
		user_verification?: string
	})

	_#defs: "/$defs/account_recovery_setting/$defs/recovery_mechanism": close({
		name!:     string
		priority!: number
	})

	_#defs: "/$defs/admin_create_user_config/$defs/invite_message_template": close({
		email_message?: string
		email_subject?: string
		sms_message?:   string
	})

	_#defs: "/$defs/lambda_config/$defs/custom_email_sender": close({
		lambda_arn!:     string
		lambda_version!: string
	})

	_#defs: "/$defs/lambda_config/$defs/custom_sms_sender": close({
		lambda_arn!:     string
		lambda_version!: string
	})

	_#defs: "/$defs/lambda_config/$defs/pre_token_generation_config": close({
		lambda_arn!:     string
		lambda_version!: string
	})

	_#defs: "/$defs/schema/$defs/number_attribute_constraints": close({
		max_value?: string
		min_value?: string
	})

	_#defs: "/$defs/schema/$defs/string_attribute_constraints": close({
		max_length?: string
		min_length?: string
	})

	_#defs: "/$defs/user_pool_add_ons/$defs/advanced_security_additional_flows": close({
		custom_auth_mode?: string
	})
}
