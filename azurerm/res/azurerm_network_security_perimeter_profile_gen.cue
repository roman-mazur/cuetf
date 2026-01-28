package res

#azurerm_network_security_perimeter_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_network_security_perimeter_profile")
	close({
		timeouts?:                      #timeouts
		id?:                            string
		name!:                          string
		network_security_perimeter_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
