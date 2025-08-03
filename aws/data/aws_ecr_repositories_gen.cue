package data

#aws_ecr_repositories: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecr_repositories")
	close({
		id?: string
		names?: [...string]
		region?: string
	})
}
