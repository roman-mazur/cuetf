package res

#github_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_membership")
	downgrade_on_destroy?: bool
	etag?:                 string
	id?:                   string
	role?:                 string
	username!:             string
}
