package data

#github_actions_variables: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_actions_variables")
	close({
		full_name?: string
		id?:        string
		name?:      string
		variables?: [...close({
			created_at?: string
			name?:       string
			updated_at?: string
			value?:      string
		})]
	})
}
