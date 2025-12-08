package res

#azurerm_eventhub_namespace_authorization_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_eventhub_namespace_authorization_rule")
	close({
		id?:                                string
		listen?:                            bool
		manage?:                            bool
		name!:                              string
		namespace_name!:                    string
		primary_connection_string?:         string
		primary_connection_string_alias?:   string
		primary_key?:                       string
		timeouts?:                          #timeouts
		resource_group_name!:               string
		secondary_connection_string?:       string
		secondary_connection_string_alias?: string
		secondary_key?:                     string
		send?:                              bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
