package res

#azurerm_relay_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_relay_namespace")
	close({
		id?:                          string
		location!:                    string
		metric_id?:                   string
		name!:                        string
		primary_connection_string?:   string
		primary_key?:                 string
		resource_group_name!:         string
		secondary_connection_string?: string
		secondary_key?:               string
		timeouts?:                    #timeouts
		sku_name!:                    string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
