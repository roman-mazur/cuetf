package res

import "list"

#aws_cognito_user_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cognito_user_pool")
	alias_attributes?: [...string]
	arn?: string
	auto_verified_attributes?: [...string]
	creation_date?:              string
	custom_domain?:              string
	deletion_protection?:        string
	domain?:                     string
	email_verification_message?: string
	email_verification_subject?: string
	endpoint?:                   string
	estimated_number_of_users?:  number
	id?:                         string
	last_modified_date?:         string
	mfa_configuration?:          string
	name!:                       string
	sms_authentication_message?: string
	sms_verification_message?:   string
	tags?: [string]: string
	tags_all?: [string]: string
	username_attributes?: [...string]
	account_recovery_setting?: #account_recovery_setting | list.MaxItems(1) & [...#account_recovery_setting]
	admin_create_user_config?: #admin_create_user_config | list.MaxItems(1) & [...#admin_create_user_config]
	device_configuration?: #device_configuration | list.MaxItems(1) & [...#device_configuration]
	email_configuration?: #email_configuration | list.MaxItems(1) & [...#email_configuration]
	lambda_config?: #lambda_config | list.MaxItems(1) & [...#lambda_config]
	password_policy?: #password_policy | list.MaxItems(1) & [...#password_policy]
	schema?: #schema | list.MaxItems(50) & [...#schema]
	sms_configuration?: #sms_configuration | list.MaxItems(1) & [...#sms_configuration]
	software_token_mfa_configuration?: #software_token_mfa_configuration | list.MaxItems(1) & [...#software_token_mfa_configuration]
	user_attribute_update_settings?: #user_attribute_update_settings | list.MaxItems(1) & [...#user_attribute_update_settings]
	user_pool_add_ons?: #user_pool_add_ons | list.MaxItems(1) & [...#user_pool_add_ons]
	username_configuration?: #username_configuration | list.MaxItems(1) & [...#username_configuration]
	verification_message_template?: #verification_message_template | list.MaxItems(1) & [...#verification_message_template]

	#account_recovery_setting: {
		recovery_mechanism?: #account_recovery_setting.#recovery_mechanism | list.MaxItems(2) & [...#account_recovery_setting.#recovery_mechanism]

		#recovery_mechanism: {
			name!:     string
			priority!: number
		}
	}

	#admin_create_user_config: {
		allow_admin_create_user_only?: bool
		invite_message_template?: #admin_create_user_config.#invite_message_template | list.MaxItems(1) & [...#admin_create_user_config.#invite_message_template]

		#invite_message_template: {
			email_message?: string
			email_subject?: string
			sms_message?:   string
		}
	}

	#device_configuration: {
		challenge_required_on_new_device?:      bool
		device_only_remembered_on_user_prompt?: bool
	}

	#email_configuration: {
		configuration_set?:      string
		email_sending_account?:  string
		from_email_address?:     string
		reply_to_email_address?: string
		source_arn?:             string
	}

	#lambda_config: {
		create_auth_challenge?:          string
		custom_message?:                 string
		define_auth_challenge?:          string
		kms_key_id?:                     string
		post_authentication?:            string
		post_confirmation?:              string
		pre_authentication?:             string
		pre_sign_up?:                    string
		pre_token_generation?:           string
		user_migration?:                 string
		verify_auth_challenge_response?: string
		custom_email_sender?: #lambda_config.#custom_email_sender | list.MaxItems(1) & [...#lambda_config.#custom_email_sender]
		custom_sms_sender?: #lambda_config.#custom_sms_sender | list.MaxItems(1) & [...#lambda_config.#custom_sms_sender]
		pre_token_generation_config?: #lambda_config.#pre_token_generation_config | list.MaxItems(1) & [...#lambda_config.#pre_token_generation_config]

		#custom_email_sender: {
			lambda_arn!:     string
			lambda_version!: string
		}

		#custom_sms_sender: {
			lambda_arn!:     string
			lambda_version!: string
		}

		#pre_token_generation_config: {
			lambda_arn!:     string
			lambda_version!: string
		}
	}

	#password_policy: {
		minimum_length?:                   number
		password_history_size?:            number
		require_lowercase?:                bool
		require_numbers?:                  bool
		require_symbols?:                  bool
		require_uppercase?:                bool
		temporary_password_validity_days?: number
	}

	#schema: {
		attribute_data_type!:      string
		developer_only_attribute?: bool
		mutable?:                  bool
		name!:                     string
		required?:                 bool
		number_attribute_constraints?: #schema.#number_attribute_constraints | list.MaxItems(1) & [...#schema.#number_attribute_constraints]
		string_attribute_constraints?: #schema.#string_attribute_constraints | list.MaxItems(1) & [...#schema.#string_attribute_constraints]

		#number_attribute_constraints: {
			max_value?: string
			min_value?: string
		}

		#string_attribute_constraints: {
			max_length?: string
			min_length?: string
		}
	}

	#sms_configuration: {
		external_id!:    string
		sns_caller_arn!: string
		sns_region?:     string
	}

	#software_token_mfa_configuration: enabled!: bool

	#user_attribute_update_settings: attributes_require_verification_before_update!: [...string]

	#user_pool_add_ons: advanced_security_mode!: string

	#username_configuration: case_sensitive!: bool

	#verification_message_template: {
		default_email_option?:  string
		email_message?:         string
		email_message_by_link?: string
		email_subject?:         string
		email_subject_by_link?: string
		sms_message?:           string
	}
}
