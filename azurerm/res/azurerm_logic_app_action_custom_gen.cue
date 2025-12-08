package res

#azurerm_logic_app_action_custom: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_logic_app_action_custom")
	close({
		timeouts?:     #timeouts
		body!:         string
		id?:           string
		logic_app_id!: string
		name!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
