package res

#azurerm_palo_alto_virtual_network_appliance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_palo_alto_virtual_network_appliance")
	close({
		timeouts?:       #timeouts
		id?:             string
		name!:           string
		virtual_hub_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
