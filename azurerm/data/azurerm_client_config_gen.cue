package data

#azurerm_client_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_client_config")
	close({
		timeouts?:        #timeouts
		client_id?:       string
		id?:              string
		object_id?:       string
		subscription_id?: string
		tenant_id?:       string
	})

	#timeouts: close({
		read?: string
	})
}
