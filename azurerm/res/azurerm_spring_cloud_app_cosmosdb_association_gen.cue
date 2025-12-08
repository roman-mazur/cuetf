package res

#azurerm_spring_cloud_app_cosmosdb_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_spring_cloud_app_cosmosdb_association")
	close({
		api_type!:                         string
		cosmosdb_access_key!:              string
		cosmosdb_account_id!:              string
		cosmosdb_cassandra_keyspace_name?: string
		cosmosdb_gremlin_database_name?:   string
		cosmosdb_gremlin_graph_name?:      string
		cosmosdb_mongo_database_name?:     string
		cosmosdb_sql_database_name?:       string
		id?:                               string
		timeouts?:                         #timeouts
		name!:                             string
		spring_cloud_app_id!:              string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
