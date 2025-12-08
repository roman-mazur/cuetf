package res

#azurerm_api_management_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_api_management_policy")
	close({
		timeouts?:          #timeouts
		api_management_id!: string
		id?:                string
		xml_content?:       string
		xml_link?:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
