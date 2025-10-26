package res

#github_organization_role_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_organization_role_user")
	close({
		id?: string

		// The login for the GitHub user account.
		login!: string

		// The unique identifier of the organization role.
		role_id!: number
	})
}
