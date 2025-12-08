package res

#azurerm_virtual_desktop_workspace_application_group_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_virtual_desktop_workspace_application_group_association")
	close({
		timeouts?:             #timeouts
		application_group_id!: string
		id?:                   string
		workspace_id!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
