package res

#azurerm_cosmosdb_cassandra_datacenter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cosmosdb_cassandra_datacenter")
	close({
		availability_zones_enabled?:      bool
		backup_storage_customer_key_uri?: string
		base64_encoded_yaml_fragment?:    string
		cassandra_cluster_id!:            string
		delegated_management_subnet_id!:  string
		disk_count?:                      number
		disk_sku?:                        string
		id?:                              string
		location!:                        string
		managed_disk_customer_key_uri?:   string
		name!:                            string
		node_count?:                      number
		timeouts?:                        #timeouts
		seed_node_ip_addresses?: [...string]
		sku_name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
