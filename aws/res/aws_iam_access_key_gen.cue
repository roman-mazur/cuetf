package res

#aws_iam_access_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iam_access_key")
	close({
		create_date?:                    string
		encrypted_secret?:               string
		encrypted_ses_smtp_password_v4?: string
		id?:                             string
		key_fingerprint?:                string
		pgp_key?:                        string
		secret?:                         string
		ses_smtp_password_v4?:           string
		status?:                         string
		user!:                           string
	})
}
