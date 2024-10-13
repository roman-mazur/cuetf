package res

#aws_cognito_user_in_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cognito_user_in_group")
	group_name!:   string
	id?:           string
	user_pool_id!: string
	username!:     string
}
