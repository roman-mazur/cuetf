package res

#github_team_sync_group_mapping: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_team_sync_group_mapping")
	close({
		group?: matchN(1, [#group, [...#group]])
		etag?:      string
		id?:        string
		team_slug!: string
	})

	#group: close({
		group_description!: string
		group_id!:          string
		group_name!:        string
	})
}
