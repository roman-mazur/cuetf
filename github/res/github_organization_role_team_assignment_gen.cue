package res

#github_organization_role_team_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_organization_role_team_assignment")
	close({
		id?: string

		// The GitHub organization role id
		role_id!: string

		// The GitHub team slug.
		team_slug!: string
	})
}
