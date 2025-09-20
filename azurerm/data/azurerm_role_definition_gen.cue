package data

#azurerm_role_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_role_definition")
	close({
		timeouts?: #timeouts
		assignable_scopes?: [...string]
		description?: string
		id?:          string
		name?:        string
		permissions?: [...close({
			actions?: [...string]
			condition?:         string
			condition_version?: string
			data_actions?: [...string]
			not_actions?: [...string]
			not_data_actions?: [...string]
		})]
		role_definition_id?: string
		scope?:              string
		type?:               string
	})

	#timeouts: close({
		read?: string
	})
}
