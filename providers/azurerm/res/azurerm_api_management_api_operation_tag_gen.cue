package res

#azurerm_api_management_api_operation_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_api_management_api_operation_tag")
	close({
		timeouts?:         #timeouts
		api_operation_id!: string
		display_name!:     string
		id?:               string
		name!:             string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
