package data

#azurerm_servicebus_topic_authorization_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_servicebus_topic_authorization_rule")
	close({
		id?:                                string
		listen?:                            bool
		manage?:                            bool
		name!:                              string
		namespace_name?:                    string
		primary_connection_string?:         string
		primary_connection_string_alias?:   string
		primary_key?:                       string
		queue_name?:                        string
		timeouts?:                          #timeouts
		resource_group_name?:               string
		secondary_connection_string?:       string
		secondary_connection_string_alias?: string
		secondary_key?:                     string
		send?:                              bool
		topic_id?:                          string
		topic_name?:                        string
	})

	#timeouts: close({
		read?: string
	})
}
