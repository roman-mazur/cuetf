package res

github_team_members: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_team_members")
	close({
		members!: matchN(1, [#members, [_, ...] & [...#members]])
		id?: string

		// Slug of the GitHub team to manage membership for.
		team_slug?: string
	})

	#members: close({
		// Role to grant the user within the team; must be one of `member` or `maintainer`.
		role?: string

		// User to add to the team.
		username!: string
	})
}
