package data

#github_repository_branches: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_repository_branches")
	branches?: [...{
		name?:      string
		protected?: bool
	}]
	id?:                          string
	only_non_protected_branches?: bool
	only_protected_branches?:     bool
	repository:                   string
}
