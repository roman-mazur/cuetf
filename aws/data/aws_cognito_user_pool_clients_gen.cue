package data

#aws_cognito_user_pool_clients: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cognito_user_pool_clients")
	client_ids?: [...string]
	client_names?: [...string]
	id?:           string
	user_pool_id!: string
}
