package res

#github_organization_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_organization_role")
	close({
		// The base role for the organization role.
		base_role?: string

		// The description of the organization role.
		description?: string
		id?:          string

		// The name of the organization role.
		name!: string

		// The permissions for the organization role.
		permissions!: [...string]

		// The ID of the organization role.
		role_id?: number
	})
}
