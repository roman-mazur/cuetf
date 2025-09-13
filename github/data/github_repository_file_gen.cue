package data

#github_repository_file: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_file")
	close({
		// The branch name, defaults to the repository's default branch
		branch?: string

		// The commit author name, defaults to the authenticated user's
		// name
		commit_author?: string

		// The commit author email address, defaults to the authenticated
		// user's email address
		commit_email?: string

		// The commit message when creating or updating the file
		commit_message?: string

		// The SHA of the commit that modified the file
		commit_sha?: string

		// The file's content
		content?: string

		// The file path to manage
		file!: string

		// The name of the commit/branch/tag
		ref?: string
		id?:  string

		// The repository name
		repository!: string

		// The blob SHA of the file
		sha?: string
	})
}
