package data

#azurerm_mobile_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mobile_network")
	close({
		timeouts?:            #timeouts
		id?:                  string
		location?:            string
		mobile_country_code?: string
		mobile_network_code?: string
		name!:                string
		resource_group_name!: string
		service_key?:         string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
