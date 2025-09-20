package res

#azurerm_servicebus_topic_authorization_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_servicebus_topic_authorization_rule")
	close({
		id?:                                string
		listen?:                            bool
		manage?:                            bool
		name!:                              string
		primary_connection_string?:         string
		primary_connection_string_alias?:   string
		primary_key?:                       string
		secondary_connection_string?:       string
		timeouts?:                          #timeouts
		secondary_connection_string_alias?: string
		secondary_key?:                     string
		send?:                              bool
		topic_id!:                          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
