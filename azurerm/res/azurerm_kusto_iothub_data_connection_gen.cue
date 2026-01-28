package res

#azurerm_kusto_iothub_data_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_kusto_iothub_data_connection")
	close({
		cluster_name!:          string
		consumer_group!:        string
		data_format?:           string
		database_name!:         string
		database_routing_type?: string
		event_system_properties?: [...string]
		id?:                        string
		iothub_id!:                 string
		location!:                  string
		mapping_rule_name?:         string
		name!:                      string
		resource_group_name!:       string
		timeouts?:                  #timeouts
		retrieval_start_date?:      string
		shared_access_policy_name!: string
		table_name?:                string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
