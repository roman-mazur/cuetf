package data

#azurerm_dev_center_attached_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dev_center_attached_network")
	close({
		timeouts?:              #timeouts
		dev_center_id!:         string
		id?:                    string
		name!:                  string
		network_connection_id?: string
	})

	#timeouts: close({
		read?: string
	})
}
