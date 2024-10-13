package res

#github_team_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_team_membership")
	etag?:     string
	id?:       string
	role?:     string
	team_id!:  string
	username!: string
}
