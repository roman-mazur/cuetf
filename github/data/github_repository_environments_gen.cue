package data

#github_repository_environments: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_environments")
	close({
		environments?: [...close({
			name?:    string
			node_id?: string
		})]
		id?:         string
		repository!: string
	})
}
