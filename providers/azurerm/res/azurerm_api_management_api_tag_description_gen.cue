package res

#azurerm_api_management_api_tag_description: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_api_management_api_tag_description")
	close({
		timeouts?:                           #timeouts
		api_tag_id!:                         string
		description?:                        string
		external_documentation_description?: string
		external_documentation_url?:         string
		id?:                                 string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
