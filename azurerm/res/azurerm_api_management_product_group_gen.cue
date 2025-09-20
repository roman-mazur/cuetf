package res

#azurerm_api_management_product_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_product_group")
	close({
		timeouts?:            #timeouts
		api_management_name!: string
		group_name!:          string
		id?:                  string
		product_id!:          string
		resource_group_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
