package res

#azurerm_mongo_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mongo_cluster")
	close({
		administrator_password?: string
		administrator_username?: string
		compute_tier?:           string
		connection_strings?: [...close({
			description?: string
			name?:        string
			value?:       string
		})]
		create_mode?:            string
		high_availability_mode?: string
		id?:                     string
		location!:               string
		name!:                   string
		preview_features?: [...string]
		public_network_access?: string
		resource_group_name!:   string
		shard_count?:           number
		source_location?:       string
		source_server_id?:      string
		timeouts?:              #timeouts
		storage_size_in_gb?:    number
		tags?: [string]: string
		version?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
