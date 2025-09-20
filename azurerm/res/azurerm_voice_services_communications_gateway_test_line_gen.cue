package res

#azurerm_voice_services_communications_gateway_test_line: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_voice_services_communications_gateway_test_line")
	close({
		timeouts?:     #timeouts
		id?:           string
		location!:     string
		name!:         string
		phone_number!: string
		purpose!:      string
		tags?: [string]: string
		voice_services_communications_gateway_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
