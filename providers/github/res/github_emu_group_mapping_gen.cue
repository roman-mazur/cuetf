package res

#github_emu_group_mapping: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_emu_group_mapping")
	close({
		etag?: string

		// Integer corresponding to the external group ID to be linked.
		group_id!: number

		// Name of the external group.
		group_name?: string
		id?:         string

		// ID of the GitHub team.
		team_id?: number

		// Slug of the GitHub team.
		team_slug!: string
	})
}
