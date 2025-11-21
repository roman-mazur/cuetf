package data

#azurerm_managed_redis: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_managed_redis")
	close({
		customer_managed_key?: [...close({
			key_vault_key_id?:          string
			user_assigned_identity_id?: string
		})]
		default_database?: [...close({
			access_keys_authentication_enabled?: bool
			client_protocol?:                    string
			clustering_policy?:                  string
			eviction_policy?:                    string
			geo_replication_group_name?:         string
			geo_replication_linked_database_ids?: [...string]
			id?: string
			module?: [...close({
				args?:    string
				name?:    string
				version?: string
			})]
			persistence_append_only_file_backup_frequency?: string
			persistence_redis_database_backup_frequency?:   string
			port?:                                          number
			primary_access_key?:                            string
			secondary_access_key?:                          string
		})]
		high_availability_enabled?: bool
		hostname?:                  string
		id?:                        string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		location?:              string
		name!:                  string
		timeouts?:              #timeouts
		public_network_access?: string
		resource_group_name!:   string
		sku_name?:              string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
