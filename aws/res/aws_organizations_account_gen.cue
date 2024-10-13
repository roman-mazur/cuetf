package res

#aws_organizations_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_organizations_account")
	arn?:                        string
	close_on_deletion?:          bool
	create_govcloud?:            bool
	email!:                      string
	govcloud_id?:                string
	iam_user_access_to_billing?: string
	id?:                         string
	joined_method?:              string
	joined_timestamp?:           string
	name!:                       string
	parent_id?:                  string
	role_name?:                  string
	status?:                     string
	tags?: [string]:     string
	tags_all?: [string]: string
}
