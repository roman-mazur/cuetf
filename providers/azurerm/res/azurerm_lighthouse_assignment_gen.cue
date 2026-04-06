package res

#azurerm_lighthouse_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_lighthouse_assignment")
	close({
		timeouts?:                 #timeouts
		id?:                       string
		lighthouse_definition_id!: string
		name?:                     string
		scope!:                    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
