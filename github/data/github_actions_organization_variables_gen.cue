package data

#github_actions_organization_variables: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_actions_organization_variables")
	id?: string
	variables?: [...{
		created_at?: string
		name?:       string
		updated_at?: string
		value?:      string
		visibility?: string
	}]
}
