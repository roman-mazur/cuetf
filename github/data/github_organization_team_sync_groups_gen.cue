package data

#github_organization_team_sync_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_organization_team_sync_groups")
	close({
		groups?: [...close({
			group_description?: string
			group_id?:          string
			group_name?:        string
		})]
		id?: string
	})
}
