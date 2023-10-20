package data

#aws_quicksight_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_quicksight_user")
	active?:         bool
	arn?:            string
	aws_account_id?: string
	email?:          string
	id?:             string
	identity_type?:  string
	namespace?:      string
	principal_id?:   string
	user_name:       string
	user_role?:      string
}
