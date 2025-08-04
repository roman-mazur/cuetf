package res

#github_actions_variable: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_actions_variable")
	close({
		// Date of 'actions_variable' creation.
		created_at?: string

		// Name of the repository.
		repository!: string

		// Date of 'actions_variable' update.
		updated_at?: string
		id?:         string

		// Value of the variable.
		value!: string

		// Name of the variable.
		variable_name!: string
	})
}
