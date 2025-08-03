package res

#aws_cognito_user_in_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cognito_user_in_group")
	close({
		group_name!:   string
		id?:           string
		region?:       string
		user_pool_id!: string
		username!:     string
	})
}
