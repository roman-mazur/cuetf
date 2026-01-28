package res

#azurerm_network_security_perimeter_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_network_security_perimeter_association")
	close({
		timeouts?:                              #timeouts
		access_mode!:                           string
		id?:                                    string
		name!:                                  string
		network_security_perimeter_profile_id!: string
		resource_id!:                           string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
