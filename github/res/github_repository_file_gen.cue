package res

#github_repository_file: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_repository_file")
	close({
		// Automatically create the branch if it could not be found.
		// Subsequent reads if the branch is deleted will occur from
		// 'autocreate_branch_source_branch'
		autocreate_branch?: bool

		// The branch name to start from, if 'autocreate_branch' is set.
		// Defaults to 'main'.
		autocreate_branch_source_branch?: string

		// The commit hash to start from, if 'autocreate_branch' is set.
		// Defaults to the tip of 'autocreate_branch_source_branch'. If
		// provided, 'autocreate_branch_source_branch' is ignored.
		autocreate_branch_source_sha?: string

		// The branch name, defaults to the repository's default branch
		branch?: string

		// The commit author name, defaults to the authenticated user's
		// name. GitHub app users may omit author and email information
		// so GitHub can verify commits as the GitHub App.
		commit_author?: string

		// The commit author email address, defaults to the authenticated
		// user's email address. GitHub app users may omit author and
		// email information so GitHub can verify commits as the GitHub
		// App.
		commit_email?: string

		// The commit message when creating, updating or deleting the file
		commit_message?: string

		// The SHA of the commit that modified the file
		commit_sha?: string

		// The file's content
		content!: string

		// The file path to manage
		file!: string

		// Enable overwriting existing files, defaults to "false"
		overwrite_on_create?: bool
		id?:                  string

		// The name of the commit/branch/tag
		ref?: string

		// The repository name
		repository!: string

		// The blob SHA of the file
		sha?: string
	})
}
