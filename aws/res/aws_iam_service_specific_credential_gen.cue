package res

#aws_iam_service_specific_credential: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iam_service_specific_credential")
	close({
		create_date?:                    string
		credential_age_days?:            number
		expiration_date?:                string
		id?:                             string
		service_credential_alias?:       string
		service_credential_secret?:      string
		service_name!:                   string
		service_password?:               string
		service_specific_credential_id?: string
		service_user_name?:              string
		status?:                         string
		user_name!:                      string
	})
}
