package data

#aws_cognito_user_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cognito_user_group")
	close({
		description?:  string
		id?:           string
		name!:         string
		precedence?:   number
		region?:       string
		role_arn?:     string
		user_pool_id!: string
	})
}
