package res

#github_team_sync_group_mapping: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_team_sync_group_mapping")
	close({
		group?: matchN(1, [#group, [...#group]])
		etag?: string
		id?:   string

		// Slug of the team.
		team_slug!: string
	})

	#group: close({
		// The description of the IdP group.
		group_description!: string

		// The ID of the IdP group.
		group_id!: string

		// The name of the IdP group.
		group_name!: string
	})
}
