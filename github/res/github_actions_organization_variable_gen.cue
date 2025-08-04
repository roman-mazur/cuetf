package res

#github_actions_organization_variable: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_actions_organization_variable")
	close({
		created_at?: string
		id?:         string
		selected_repository_ids?: [...number]
		updated_at?:    string
		value!:         string
		variable_name!: string
		visibility!:    string
	})
}
