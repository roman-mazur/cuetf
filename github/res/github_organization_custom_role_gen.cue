package res

#github_organization_custom_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_organization_custom_role")
	close({
		// The base role for the custom repository role.
		base_role!: string

		// The description of the custom repository role.
		description?: string

		// The organization custom repository role to create.
		name!: string
		id?:   string

		// The permissions for the custom repository role.
		permissions!: [...string]
	})
}
