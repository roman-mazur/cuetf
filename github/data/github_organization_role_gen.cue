package data

#github_organization_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_organization_role")
	close({
		// The system role from which this role inherits permissions.
		base_role?: string

		// The description of the organization role.
		description?: string

		// The name of the organization role.
		name?: string
		id?:   string

		// A list of permissions included in this role.
		permissions?: [...string]

		// The ID of the organization role.
		role_id!: number

		// The source of this role; one of `Predefined`, `Organization`,
		// or `Enterprise`.
		source?: string
	})
}
