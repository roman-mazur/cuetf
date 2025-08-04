package res

#github_actions_runner_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_actions_runner_group")
	close({
		// Whether public repositories can be added to the runner group.
		allows_public_repositories?: bool

		// Whether this is the default runner group.
		default?: bool

		// An etag representing the runner group object
		etag?: string

		// The ID of the runner group.
		id?: string

		// Whether the runner group is inherited from the enterprise level
		inherited?: bool

		// Name of the runner group.
		name!: string

		// If 'true', the runner group will be restricted to running only
		// the workflows specified in the 'selected_workflows' array.
		// Defaults to 'false'.
		restricted_to_workflows?: bool

		// The GitHub API URL for the runner group's runners.
		runners_url?: string

		// GitHub API URL for the runner group's repositories.
		selected_repositories_url?: string

		// List of repository IDs that can access the runner group.
		selected_repository_ids?: [...number]

		// List of workflows the runner group should be allowed to run.
		// This setting will be ignored unless restricted_to_workflows is
		// set to 'true'.
		selected_workflows?: [...string]

		// The visibility of the runner group.
		visibility!: string
	})
}
