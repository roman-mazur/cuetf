package data

#github_enterprise: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_enterprise")
	created_at?:  string
	database_id?: number
	description?: string
	id?:          string
	name?:        string
	slug!:        string
	url?:         string
}
