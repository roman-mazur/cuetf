package data

#azurerm_servicebus_namespace_authorization_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_servicebus_namespace_authorization_rule")
	close({
		timeouts?:                          #timeouts
		id?:                                string
		name!:                              string
		namespace_id?:                      string
		primary_connection_string?:         string
		primary_connection_string_alias?:   string
		primary_key?:                       string
		secondary_connection_string?:       string
		secondary_connection_string_alias?: string
		secondary_key?:                     string
	})

	#timeouts: close({
		read?: string
	})
}
