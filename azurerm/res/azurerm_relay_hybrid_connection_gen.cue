package res

#azurerm_relay_hybrid_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_relay_hybrid_connection")
	close({
		timeouts?:                      #timeouts
		id?:                            string
		name!:                          string
		relay_namespace_name!:          string
		requires_client_authorization?: bool
		resource_group_name!:           string
		user_metadata?:                 string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
