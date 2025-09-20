package res

#azurerm_stream_analytics_output_cosmosdb: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_stream_analytics_output_cosmosdb")
	close({
		timeouts?:                 #timeouts
		authentication_mode?:      string
		container_name!:           string
		cosmosdb_account_key!:     string
		cosmosdb_sql_database_id!: string
		document_id?:              string
		id?:                       string
		name!:                     string
		partition_key?:            string
		stream_analytics_job_id!:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
