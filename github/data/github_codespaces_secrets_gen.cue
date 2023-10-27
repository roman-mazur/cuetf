package data

#github_codespaces_secrets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_codespaces_secrets")
	full_name?: string
	id?:        string
	name?:      string
	secrets?: [...{
		created_at?: string
		name?:       string
		updated_at?: string
	}]
}
