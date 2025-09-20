package res

#azurerm_api_management_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_group")
	close({
		timeouts?:            #timeouts
		api_management_name!: string
		description?:         string
		display_name!:        string
		external_id?:         string
		id?:                  string
		name!:                string
		resource_group_name!: string
		type?:                string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
