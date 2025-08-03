package data

#aws_secretsmanager_secrets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_secretsmanager_secrets")
	close({
		arns?: [...string]
		id?: string
		names?: [...string]
		region?: string
		filter?: matchN(1, [#filter, [...#filter]])
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
