package res

#azurerm_digital_twins_time_series_database_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_digital_twins_time_series_database_connection")
	close({
		digital_twins_id!:                string
		eventhub_consumer_group_name?:    string
		eventhub_name!:                   string
		eventhub_namespace_endpoint_uri!: string
		eventhub_namespace_id!:           string
		id?:                              string
		kusto_cluster_id!:                string
		kusto_cluster_uri!:               string
		kusto_database_name!:             string
		timeouts?:                        #timeouts
		kusto_table_name?:                string
		name!:                            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
