package res

#azurerm_monitor_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_monitor_workspace")
	close({
		timeouts?:                            #timeouts
		default_data_collection_endpoint_id?: string
		default_data_collection_rule_id?:     string
		id?:                                  string
		location!:                            string
		name!:                                string
		public_network_access_enabled?:       bool
		query_endpoint?:                      string
		resource_group_name!:                 string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
