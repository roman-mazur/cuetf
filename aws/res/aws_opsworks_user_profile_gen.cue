package res

#aws_opsworks_user_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_opsworks_user_profile")
	allow_self_management?: bool
	id?:                    string
	ssh_public_key?:        string
	ssh_username:           string
	user_arn:               string
}
