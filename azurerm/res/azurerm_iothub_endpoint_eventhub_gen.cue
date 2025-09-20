package res

#azurerm_iothub_endpoint_eventhub: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_iothub_endpoint_eventhub")
	close({
		authentication_type?: string
		connection_string?:   string
		endpoint_uri?:        string
		entity_path?:         string
		id?:                  string
		identity_id?:         string
		iothub_id!:           string
		timeouts?:            #timeouts
		name!:                string
		resource_group_name!: string
		subscription_id?:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
