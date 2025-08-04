package res

#github_branch: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_branch")
	close({
		// The repository branch to create.
		branch!: string

		// An etag representing the Branch object.
		etag?: string

		// A string representing a branch reference, in the form of
		// 'refs/heads/<branch>'.
		ref?: string

		// The GitHub repository name.
		repository!: string

		// A string storing the reference's HEAD commit's SHA1.
		sha?: string
		id?:  string

		// The branch name to start from. Defaults to 'main'.
		source_branch?: string

		// The commit hash to start from. Defaults to the tip of
		// 'source_branch'. If provided, 'source_branch' is ignored.
		source_sha?: string
	})
}
