package res

#aws_iam_account_password_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_account_password_policy")
	allow_users_to_change_password?: bool
	expire_passwords?:               bool
	hard_expiry?:                    bool
	id?:                             string
	max_password_age?:               number
	minimum_password_length?:        number
	password_reuse_prevention?:      number
	require_lowercase_characters?:   bool
	require_numbers?:                bool
	require_symbols?:                bool
	require_uppercase_characters?:   bool
}
