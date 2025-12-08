package data

#azurerm_mobile_network_site: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_mobile_network_site")
	close({
		timeouts?:          #timeouts
		id?:                string
		location?:          string
		mobile_network_id!: string
		name!:              string
		network_function_ids?: [...string]
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
