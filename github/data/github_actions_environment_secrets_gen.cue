package data

#github_actions_environment_secrets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_actions_environment_secrets")
	environment!: string
	full_name?:   string
	id?:          string
	name?:        string
	secrets?: [...{
		created_at?: string
		name?:       string
		updated_at?: string
	}]
}
