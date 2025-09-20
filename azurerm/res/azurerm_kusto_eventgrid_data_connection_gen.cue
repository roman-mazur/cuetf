package res

#azurerm_kusto_eventgrid_data_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_kusto_eventgrid_data_connection")
	close({
		blob_storage_event_type?:         string
		cluster_name!:                    string
		data_format?:                     string
		database_name!:                   string
		database_routing_type?:           string
		eventgrid_event_subscription_id?: string
		eventhub_consumer_group_name!:    string
		eventhub_id!:                     string
		id?:                              string
		location!:                        string
		managed_identity_id?:             string
		mapping_rule_name?:               string
		timeouts?:                        #timeouts
		name!:                            string
		resource_group_name!:             string
		skip_first_record?:               bool
		storage_account_id!:              string
		table_name?:                      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
