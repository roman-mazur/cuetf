package data

#github_organization_repository_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_organization_repository_role")
	close({
		// The system role from which this role inherits permissions.
		base_role?: string

		// The description of the organization repository role.
		description?: string
		id?:          string

		// The name of the organization repository role.
		name?: string

		// The permissions included in this role.
		permissions?: [...string]

		// The ID of the organization repository role.
		role_id!: number
	})
}
