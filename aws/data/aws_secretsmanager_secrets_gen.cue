package data

#aws_secretsmanager_secrets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_secretsmanager_secrets")
	arns?: [...string]
	id?: string
	names?: [...string]
	filter?: #filter | [...#filter]

	#filter: {
		name!: string
		values!: [...string]
	}
}
