package data

#github_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_membership")
	etag?:         string
	id?:           string
	organization?: string
	role?:         string
	state?:        string
	username:      string
}
