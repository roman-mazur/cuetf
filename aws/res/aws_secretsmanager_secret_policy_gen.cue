package res

#aws_secretsmanager_secret_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_secretsmanager_secret_policy")
	block_public_policy?: bool
	id?:                  string
	policy!:              string
	secret_arn!:          string
}
