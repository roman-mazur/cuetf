package res

#azurerm_notification_hub_authorization_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_notification_hub_authorization_rule")
	close({
		id?:                          string
		listen?:                      bool
		manage?:                      bool
		name!:                        string
		namespace_name!:              string
		notification_hub_name!:       string
		primary_access_key?:          string
		primary_connection_string?:   string
		timeouts?:                    #timeouts
		resource_group_name!:         string
		secondary_access_key?:        string
		secondary_connection_string?: string
		send?:                        bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
