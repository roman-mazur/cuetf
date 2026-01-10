package res

#github_workflow_repository_permissions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_workflow_repository_permissions")
	close({
		// Whether GitHub Actions can approve pull requests. Enabling this
		// can be a security risk.
		can_approve_pull_request_reviews?: bool

		// The default workflow permissions granted to the GITHUB_TOKEN
		// when running workflows.
		default_workflow_permissions?: string
		id?:                           string

		// The GitHub repository.
		repository!: string
	})
}
