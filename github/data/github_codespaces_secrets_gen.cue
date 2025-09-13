package data

#github_codespaces_secrets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_codespaces_secrets")
	close({
		// Full name of the repository (in `org/name` format).
		full_name?: string
		id?:        string

		// The name of the repository.
		name?: string
		secrets?: [...close({
			created_at?: string
			name?:       string
			updated_at?: string
		})]
	})
}
