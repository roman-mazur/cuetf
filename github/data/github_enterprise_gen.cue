package data

#github_enterprise: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_enterprise")
	created_at?:  string
	description?: string
	id?:          string
	name?:        string
	slug:         string
	url?:         string
}
