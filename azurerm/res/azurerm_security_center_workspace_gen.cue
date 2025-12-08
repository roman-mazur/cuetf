package res

#azurerm_security_center_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_security_center_workspace")
	close({
		timeouts?:     #timeouts
		id?:           string
		scope!:        string
		workspace_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
