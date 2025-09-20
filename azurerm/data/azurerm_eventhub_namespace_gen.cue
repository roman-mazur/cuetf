package data

#azurerm_eventhub_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_eventhub_namespace")
	close({
		auto_inflate_enabled?:                      bool
		capacity?:                                  number
		dedicated_cluster_id?:                      string
		default_primary_connection_string?:         string
		default_primary_connection_string_alias?:   string
		default_primary_key?:                       string
		default_secondary_connection_string?:       string
		default_secondary_connection_string_alias?: string
		default_secondary_key?:                     string
		id?:                                        string
		kafka_enabled?:                             bool
		location?:                                  string
		timeouts?:                                  #timeouts
		maximum_throughput_units?:                  number
		name!:                                      string
		resource_group_name!:                       string
		sku?:                                       string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
