package data

#aws_cognito_user_pools: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cognito_user_pools")
	arns?: [...string]
	id?: string
	ids?: [...string]
	name: string
}
