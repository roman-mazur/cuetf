package res

#github_repository_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_project")
	close({
		// The body of the project.
		body?: string

		// The name of the project.
		name!: string
		etag?: string

		// The repository of the project.
		repository!: string
		id?:         string

		// URL of the project
		url?: string
	})
}
