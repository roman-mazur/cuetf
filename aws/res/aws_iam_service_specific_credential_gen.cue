package res

#aws_iam_service_specific_credential: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_service_specific_credential")
	id?:                             string
	service_name:                    string
	service_password?:               string
	service_specific_credential_id?: string
	service_user_name?:              string
	status?:                         string
	user_name:                       string
}
