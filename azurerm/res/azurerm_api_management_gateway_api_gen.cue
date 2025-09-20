package res

#azurerm_api_management_gateway_api: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_gateway_api")
	close({
		timeouts?:   #timeouts
		api_id!:     string
		gateway_id!: string
		id?:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
