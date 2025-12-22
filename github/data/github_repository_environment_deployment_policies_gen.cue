package data

#github_repository_environment_deployment_policies: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_repository_environment_deployment_policies")
	close({
		// The name of the environment.
		environment!: string
		id?:          string
		policies?: [...close({
			pattern?: string
			type?:    string
		})]

		// The name of the GitHub repository.
		repository!: string
	})
}
