package res

#github_organization_role_team: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_organization_role_team")
	close({
		id?: string

		// The ID of the organization role.
		role_id!: number

		// The slug of the team name.
		team_slug!: string
	})
}
