package data

#github_repository_branches: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_repository_branches")
	close({
		branches?: [...close({
			name?:      string
			protected?: bool
		})]
		id?:                          string
		only_non_protected_branches?: bool
		only_protected_branches?:     bool
		repository!:                  string
	})
}
