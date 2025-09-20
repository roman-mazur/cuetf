package res

#azurerm_api_management_product_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_product_tag")
	close({
		timeouts?:                  #timeouts
		api_management_name!:       string
		api_management_product_id!: string
		id?:                        string
		name!:                      string
		resource_group_name!:       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
