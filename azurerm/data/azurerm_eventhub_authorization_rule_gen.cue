package data

#azurerm_eventhub_authorization_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_eventhub_authorization_rule")
	close({
		eventhub_name!:                     string
		id?:                                string
		listen?:                            bool
		manage?:                            bool
		name!:                              string
		namespace_name!:                    string
		primary_connection_string?:         string
		primary_connection_string_alias?:   string
		primary_key?:                       string
		resource_group_name!:               string
		secondary_connection_string?:       string
		secondary_connection_string_alias?: string
		timeouts?:                          #timeouts
		secondary_key?:                     string
		send?:                              bool
	})

	#timeouts: close({
		read?: string
	})
}
