package res

#github_repository_environment_deployment_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_repository_environment_deployment_policy")
	close({
		// The name pattern that branches must match in order to deploy to
		// the environment.
		branch_pattern?: string

		// The name of the environment.
		environment!: string
		id?:          string

		// The ID of the deployment policy.
		policy_id?: number

		// The name of the GitHub repository.
		repository!: string

		// The ID of the GitHub repository.
		repository_id?: number

		// The name pattern that tags must match in order to deploy to the
		// environment.
		tag_pattern?: string
	})
}
