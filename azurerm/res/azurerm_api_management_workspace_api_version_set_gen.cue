package res

#azurerm_api_management_workspace_api_version_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_workspace_api_version_set")
	close({
		timeouts?:                    #timeouts
		api_management_workspace_id!: string
		description?:                 string
		display_name!:                string
		id?:                          string
		name!:                        string
		version_header_name?:         string
		version_query_name?:          string
		versioning_scheme!:           string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
