package data

#github_repository_deployment_branch_policies: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_deployment_branch_policies")
	close({
		deployment_branch_policies?: [...close({
			id?:   string
			name?: string
		})]

		// The target environment name.
		environment_name!: string
		id?:               string

		// The GitHub repository name.
		repository!: string
	})
}
