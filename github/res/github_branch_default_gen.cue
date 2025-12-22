package res

#github_branch_default: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_branch_default")
	close({
		// The branch (e.g. 'main').
		branch!: string
		etag?:   string

		// Indicate if it should rename the branch rather than use an
		// existing branch. Defaults to 'false'.
		rename?: bool
		id?:     string

		// The GitHub repository.
		repository!: string
	})
}
