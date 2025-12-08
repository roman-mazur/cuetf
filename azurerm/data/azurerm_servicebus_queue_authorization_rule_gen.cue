package data

#azurerm_servicebus_queue_authorization_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_servicebus_queue_authorization_rule")
	close({
		id?:                                string
		listen?:                            bool
		manage?:                            bool
		name!:                              string
		namespace_name?:                    string
		primary_connection_string?:         string
		primary_connection_string_alias?:   string
		primary_key?:                       string
		queue_id?:                          string
		queue_name?:                        string
		resource_group_name?:               string
		secondary_connection_string?:       string
		timeouts?:                          #timeouts
		secondary_connection_string_alias?: string
		secondary_key?:                     string
		send?:                              bool
	})

	#timeouts: close({
		read?: string
	})
}
