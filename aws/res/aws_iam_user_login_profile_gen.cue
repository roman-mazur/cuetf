package res

#aws_iam_user_login_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iam_user_login_profile")
	close({
		encrypted_password?:      string
		id?:                      string
		key_fingerprint?:         string
		password?:                string
		password_length?:         number
		password_reset_required?: bool
		pgp_key?:                 string
		user!:                    string
	})
}
