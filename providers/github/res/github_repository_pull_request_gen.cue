package res

#github_repository_pull_request: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_repository_pull_request")
	close({
		// Name of the branch serving as the base of the Pull Request.
		base_ref!: string

		// Name of the base repository to retrieve the Pull Requests from.
		base_repository!: string

		// Head commit SHA of the Pull Request base.
		base_sha?: string

		// Body of the Pull Request.
		body?: string

		// Indicates Whether this Pull Request is a draft.
		draft?: bool

		// Name of the branch serving as the head of the Pull Request.
		head_ref!: string

		// Head commit SHA of the Pull Request head.
		head_sha?: string

		// List of names of labels on the PR
		labels?: [...string]
		id?: string

		// Controls whether the base repository maintainers can modify the
		// Pull Request. Default: 'false'.
		maintainer_can_modify?: bool

		// The number of the Pull Request within the repository.
		"number"?: number

		// Unix timestamp indicating the Pull Request creation time.
		opened_at?: number

		// Username of the PR creator
		opened_by?: string

		// Owner of the repository. If not provided, the provider's
		// default owner is used.
		owner?: string

		// The current Pull Request state - can be 'open', 'closed' or
		// 'merged'.
		state?: string

		// The title of the Pull Request.
		title!: string

		// The timestamp of the last Pull Request update.
		updated_at?: number
	})
}
