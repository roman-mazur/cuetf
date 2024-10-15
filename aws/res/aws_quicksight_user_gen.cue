package res

#aws_quicksight_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_user")
	arn?:            string
	aws_account_id?: string
	email!:          string
	iam_arn?:        string
	id?:             string
	identity_type!:  string
	namespace?:      string
	session_name?:   string
	user_name?:      string
	user_role!:      string
}
