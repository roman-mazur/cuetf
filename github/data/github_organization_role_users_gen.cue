package data

#github_organization_role_users: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_organization_role_users")
	close({
		id?: string

		// The ID of the organization role.
		role_id!: number

		// Users assigned to the organization role.
		users?: [...close({
			login?:   string
			user_id?: number
		})]
	})
}
