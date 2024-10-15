package data

#github_actions_secrets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_actions_secrets")
	full_name?: string
	id?:        string
	name?:      string
	secrets?: [...{
		created_at?: string
		name?:       string
		updated_at?: string
	}]
}
