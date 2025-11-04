package res

#github_team_members: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_team_members")
	close({
		members!: matchN(1, [#members, [_, ...] & [...#members]])
		id?: string

		// The GitHub team id or slug
		team_id!: string
	})

	#members: close({
		// The role of the user within the team. Must be one of 'member'
		// or 'maintainer'.
		role?: string

		// The user to add to the team.
		username!: string
	})
}
