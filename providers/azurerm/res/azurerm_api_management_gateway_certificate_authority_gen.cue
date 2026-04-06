package res

#azurerm_api_management_gateway_certificate_authority: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_api_management_gateway_certificate_authority")
	close({
		timeouts?:          #timeouts
		api_management_id!: string
		certificate_name!:  string
		gateway_name!:      string
		id?:                string
		is_trusted?:        bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
