package data

#github_repository_teams: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_repository_teams")
	full_name?: string
	id?:        string
	name?:      string
	teams?: [...{
		name?:       string
		permission?: string
		slug?:       string
	}]
}
