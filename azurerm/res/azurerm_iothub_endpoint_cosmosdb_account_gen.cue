package res

#azurerm_iothub_endpoint_cosmosdb_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_iothub_endpoint_cosmosdb_account")
	close({
		authentication_type?:    string
		container_name!:         string
		database_name!:          string
		endpoint_uri!:           string
		id?:                     string
		identity_id?:            string
		iothub_id!:              string
		name!:                   string
		partition_key_name?:     string
		partition_key_template?: string
		primary_key?:            string
		resource_group_name!:    string
		timeouts?:               #timeouts
		secondary_key?:          string
		subscription_id?:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
