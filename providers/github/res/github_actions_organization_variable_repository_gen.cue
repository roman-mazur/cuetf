package res

#github_actions_organization_variable_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_actions_organization_variable_repository")
	close({
		id?: string

		// The repository ID that can access the organization variable.
		repository_id!: number

		// Name of the existing variable.
		variable_name!: string
	})
}
