package res

#github_team_sync_group_mapping: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_team_sync_group_mapping")
	etag?:      string
	id?:        string
	team_slug!: string
	group?: #group | [...#group]

	#group: {
		group_description!: string
		group_id!:          string
		group_name!:        string
	}
}
