package res

#azurerm_api_management_workspace_policy_fragment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_api_management_workspace_policy_fragment")
	close({
		timeouts?:                    #timeouts
		api_management_workspace_id!: string
		description?:                 string
		id?:                          string
		name!:                        string
		xml_content!:                 string
		xml_format?:                  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
