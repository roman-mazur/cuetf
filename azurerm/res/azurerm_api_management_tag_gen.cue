package res

#azurerm_api_management_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_tag")
	close({
		timeouts?:          #timeouts
		api_management_id!: string
		display_name?:      string
		id?:                string
		name!:              string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
