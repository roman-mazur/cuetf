package res

#github_team_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_team_membership")
	close({
		// The role of the user within the team. Must be one of 'member'
		// or 'maintainer'.
		role?: string

		// The GitHub team id or the GitHub team slug.
		team_id!: string
		etag?:    string

		// The user to add to the team.
		username!: string
		id?:       string
	})
}
