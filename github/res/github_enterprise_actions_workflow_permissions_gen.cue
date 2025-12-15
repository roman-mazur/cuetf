package res

#github_enterprise_actions_workflow_permissions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_enterprise_actions_workflow_permissions")
	close({
		// Whether GitHub Actions can approve pull request reviews.
		can_approve_pull_request_reviews?: bool

		// The default workflow permissions granted to the GITHUB_TOKEN
		// when running workflows. Can be 'read' or 'write'.
		default_workflow_permissions?: string

		// The slug of the enterprise.
		enterprise_slug!: string
		id?:              string
	})
}
