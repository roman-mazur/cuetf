package res

#github_actions_organization_variable_repositories: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_actions_organization_variable_repositories")
	close({
		id?: string

		// An array of repository ids that can access the organization
		// variable.
		selected_repository_ids!: [...number]

		// Name of the existing variable.
		variable_name!: string
	})
}
