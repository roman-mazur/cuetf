package res

#github_repository_topics: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_topics")
	close({
		id?:         string
		repository!: string
		topics!: [...string]
	})
}
