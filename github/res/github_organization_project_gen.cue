package res

#github_organization_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_organization_project")
	close({
		// The body of the project.
		body?: string
		etag?: string

		// The name of the project.
		name!: string
		id?:   string

		// URL of the project.
		url?: string
	})
}
