package data

#azurerm_eventhub_sas: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_eventhub_sas")
	close({
		timeouts?:          #timeouts
		connection_string!: string
		expiry!:            string
		id?:                string
		sas?:               string
	})

	#timeouts: close({
		read?: string
	})
}
