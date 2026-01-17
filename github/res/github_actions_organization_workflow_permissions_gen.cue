package res

#github_actions_organization_workflow_permissions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_actions_organization_workflow_permissions")
	close({
		// Whether GitHub Actions can approve pull request reviews in any
		// repository in the organization.
		can_approve_pull_request_reviews?: bool

		// The default workflow permissions granted to the GITHUB_TOKEN
		// when running workflows in any repository in the organization.
		// Can be 'read' or 'write'.
		default_workflow_permissions?: string
		id?:                           string

		// The slug of the Organization.
		organization_slug!: string
	})
}
