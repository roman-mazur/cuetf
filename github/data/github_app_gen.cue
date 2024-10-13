package data

#github_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_app")
	description?: string
	id?:          string
	name?:        string
	node_id?:     string
	slug!:        string
}
