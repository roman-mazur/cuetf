package res

#github_actions_organization_variable: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_actions_organization_variable")
	close({
		// Date of 'actions_variable' creation.
		created_at?: string

		// An array of repository ids that can access the organization
		// variable.
		selected_repository_ids?: [...number]
		id?: string

		// Date of 'actions_variable' update.
		updated_at?: string

		// Value of the variable.
		value!: string

		// Name of the variable.
		variable_name!: string

		// Configures the access that repositories have to the
		// organization variable. Must be one of 'all', 'private', or
		// 'selected'. 'selected_repository_ids' is required if set to
		// 'selected'.
		visibility!: string
	})
}
