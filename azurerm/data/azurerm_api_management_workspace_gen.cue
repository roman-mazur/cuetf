package data

#azurerm_api_management_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_api_management_workspace")
	close({
		api_management_id!: string

		// The display name of the API Management Workspace.
		display_name?: string
		id?:           string
		name!:         string
		timeouts?:     #timeouts
	})

	#timeouts: close({
		read?: string
	})
}
