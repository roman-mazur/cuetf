package data

#azurerm_api_management_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_gateway")
	close({
		timeouts?:          #timeouts
		api_management_id!: string
		description?:       string
		id?:                string
		location_data?: [...close({
			city?:     string
			district?: string
			name?:     string
			region?:   string
		})]
		name!: string
	})

	#timeouts: close({
		read?: string
	})
}
