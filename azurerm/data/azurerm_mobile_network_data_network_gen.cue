package data

#azurerm_mobile_network_data_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mobile_network_data_network")
	close({
		timeouts?:          #timeouts
		description?:       string
		id?:                string
		location?:          string
		mobile_network_id!: string
		name!:              string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
