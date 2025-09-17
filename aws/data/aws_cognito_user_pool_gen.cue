package data

#aws_cognito_user_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cognito_user_pool")
	close({
		account_recovery_setting?: [...close({
			recovery_mechanism?: [...close({
				name?:     string
				priority?: number
			})]
		})]
		admin_create_user_config?: [...close({
			allow_admin_create_user_only?: bool
			invite_message_template?: [...close({
				email_message?: string
				email_subject?: string
				sms_message?:   string
			})]
			unused_account_validity_days?: number
		})]
		arn?: string
		auto_verified_attributes?: [...string]
		creation_date?:       string
		custom_domain?:       string
		deletion_protection?: string
		device_configuration?: [...close({
			challenge_required_on_new_device?:      bool
			device_only_remembered_on_user_prompt?: bool
		})]
		domain?: string
		email_configuration?: [...close({
			configuration_set?:      string
			email_sending_account?:  string
			from?:                   string
			reply_to_email_address?: string
			source_arn?:             string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                    string
		estimated_number_of_users?: number
		id?:                        string
		lambda_config?: [...close({
			create_auth_challenge?: string
			custom_email_sender?: [...close({
				lambda_arn?:     string
				lambda_version?: string
			})]
			custom_message?: string
			custom_sms_sender?: [...close({
				lambda_arn?:     string
				lambda_version?: string
			})]
			define_auth_challenge?: string
			kms_key_id?:            string
			post_authentication?:   string
			post_confirmation?:     string
			pre_authentication?:    string
			pre_sign_up?:           string
			pre_token_generation?:  string
			pre_token_generation_config?: [...close({
				lambda_arn?:     string
				lambda_version?: string
			})]
			user_migration?:                 string
			verify_auth_challenge_response?: string
		})]
		last_modified_date?: string
		mfa_configuration?:  string
		name?:               string
		schema_attributes?: [...close({
			attribute_data_type?:      string
			developer_only_attribute?: bool
			mutable?:                  bool
			name?:                     string
			number_attribute_constraints?: [...close({
				max_value?: string
				min_value?: string
			})]
			required?: bool
			string_attribute_constraints?: [...close({
				max_length?: string
				min_length?: string
			})]
		})]
		sms_authentication_message?: string
		sms_configuration_failure?:  string
		sms_verification_message?:   string
		tags?: [string]: string
		user_pool_add_ons?: [...close({
			advanced_security_additional_flows?: [...close({
				custom_auth_mode?: string
			})]
			advanced_security_mode?: string
		})]
		user_pool_id!: string
		username_attributes?: [...string]
	})
}
