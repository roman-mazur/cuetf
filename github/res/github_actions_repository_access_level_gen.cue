package res

#github_actions_repository_access_level: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_actions_repository_access_level")
	close({
		// Where the actions or reusable workflows of the repository may
		// be used. Possible values are 'none', 'user', 'organization',
		// or 'enterprise'.
		access_level!: string
		id?:           string

		// The GitHub repository.
		repository!: string
	})
}
