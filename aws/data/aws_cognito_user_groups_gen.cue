package data

#aws_cognito_user_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cognito_user_groups")
	groups?: [...{
		description?: string
		group_name?:  string
		precedence?:  number
		role_arn?:    string
	}]
	id?:           string
	user_pool_id!: string
}
