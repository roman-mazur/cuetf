package data

#github_organization_role_teams: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_organization_role_teams")
	close({
		id?: string

		// The unique identifier of the organization role.
		role_id!: number

		// Teams assigned to the organization role.
		teams?: [...close({
			name?:       string
			permission?: string
			slug?:       string
			team_id?:    number
		})]
	})
}
