package res

#aws_cognito_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cognito_user")
	attributes?: [string]: string
	client_metadata?: [string]: string
	creation_date?: string
	desired_delivery_mediums?: [...string]
	enabled?:              bool
	force_alias_creation?: bool
	id?:                   string
	last_modified_date?:   string
	message_action?:       string
	mfa_setting_list?: [...string]
	password?:              string
	preferred_mfa_setting?: string
	status?:                string
	sub?:                   string
	temporary_password?:    string
	user_pool_id!:          string
	username!:              string
	validation_data?: [string]: string
}
