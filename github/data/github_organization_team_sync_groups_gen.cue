package data

#github_organization_team_sync_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_organization_team_sync_groups")
	groups?: [...{
		group_description?: string
		group_id?:          string
		group_name?:        string
	}]
	id?: string
}
