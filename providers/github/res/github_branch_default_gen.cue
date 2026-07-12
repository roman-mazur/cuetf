package res

github_branch_default: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_branch_default")
	close({
		// The name of the branch to set as the default (e.g. 'main').
		branch!: string

		// The ETag header for the repository API response.
		etag?: string
		id?:   string

		// If `true` rename the existing branch when the `branch` input is changed. Defaults to 'false'.
		rename?: bool

		// The name of the GitHub repository.
		repository!: string

		// The ID of the GitHub repository.
		repository_id?: number

		// If `true`, poll until GitHub propagates the renamed default branch before
		// proceeding. Only has effect when `rename` is also `true`. Defaults to
		// 'false'.
		wait_for_rename?: bool
	})
}
