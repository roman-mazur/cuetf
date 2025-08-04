package data

#github_actions_environment_secrets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_actions_environment_secrets")
	close({
		environment!: string
		full_name?:   string
		id?:          string
		name?:        string
		secrets?: [...close({
			created_at?: string
			name?:       string
			updated_at?: string
		})]
	})
}
