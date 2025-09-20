package res

#azurerm_servicebus_namespace_disaster_recovery_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_servicebus_namespace_disaster_recovery_config")
	close({
		timeouts?:                          #timeouts
		alias_authorization_rule_id?:       string
		default_primary_key?:               string
		default_secondary_key?:             string
		id?:                                string
		name!:                              string
		partner_namespace_id!:              string
		primary_connection_string_alias?:   string
		primary_namespace_id!:              string
		secondary_connection_string_alias?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
