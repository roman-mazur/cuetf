package data

#azurerm_servicebus_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_servicebus_namespace")
	close({
		capacity?:                            number
		default_primary_connection_string?:   string
		default_primary_key?:                 string
		default_secondary_connection_string?: string
		default_secondary_key?:               string
		endpoint?:                            string
		id?:                                  string
		location?:                            string
		timeouts?:                            #timeouts
		name!:                                string
		premium_messaging_partitions?:        number
		resource_group_name!:                 string
		sku?:                                 string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
