package res

#azurerm_monitor_data_collection_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_monitor_data_collection_endpoint")
	close({
		configuration_access_endpoint?: string
		description?:                   string
		id?:                            string
		immutable_id?:                  string
		kind?:                          string
		location!:                      string
		logs_ingestion_endpoint?:       string
		metrics_ingestion_endpoint?:    string
		timeouts?:                      #timeouts
		name!:                          string
		public_network_access_enabled?: bool
		resource_group_name!:           string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
