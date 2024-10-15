package res

#github_actions_environment_variable: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_actions_environment_variable")
	created_at?:    string
	environment!:   string
	id?:            string
	repository!:    string
	updated_at?:    string
	value!:         string
	variable_name!: string
}
