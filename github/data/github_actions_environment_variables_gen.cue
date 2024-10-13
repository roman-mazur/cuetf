package data

#github_actions_environment_variables: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_actions_environment_variables")
	environment!: string
	full_name?:   string
	id?:          string
	name?:        string
	variables?: [...{
		created_at?: string
		name?:       string
		updated_at?: string
		value?:      string
	}]
}
