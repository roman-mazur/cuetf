package res

#github_organization_custom_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_organization_custom_role")
	close({
		base_role!:   string
		description?: string
		id?:          string
		name!:        string
		permissions!: [...string]
	})
}
