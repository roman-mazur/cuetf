package res

#azurerm_role_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_role_definition")
	close({
		permissions?: matchN(1, [#permissions, [...#permissions]])
		assignable_scopes?: [...string]
		description?:                 string
		id?:                          string
		name!:                        string
		role_definition_id?:          string
		role_definition_resource_id?: string
		scope!:                       string
		timeouts?:                    #timeouts
	})

	#permissions: close({
		actions?: [...string]
		data_actions?: [...string]
		not_actions?: [...string]
		not_data_actions?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
