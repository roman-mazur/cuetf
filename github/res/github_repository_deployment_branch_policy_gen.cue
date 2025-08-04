package res

#github_repository_deployment_branch_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_deployment_branch_policy")
	close({
		// The target environment name.
		environment_name!: string

		// An etag representing the Branch object.
		etag?: string

		// The name of the branch
		name!: string
		id?:   string

		// The GitHub repository name.
		repository!: string
	})
}
