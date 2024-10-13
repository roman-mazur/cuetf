package data

#aws_ecr_repositories: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ecr_repositories")
	id?: string
	names?: [...string]
}
