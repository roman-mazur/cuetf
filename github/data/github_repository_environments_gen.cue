package data

#github_repository_environments: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_environments")
	environments?: [...{
		name?:    string
		node_id?: string
	}]
	id?:         string
	repository!: string
}
