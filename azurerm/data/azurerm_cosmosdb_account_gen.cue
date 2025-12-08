package data

#azurerm_cosmosdb_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_cosmosdb_account")
	close({
		automatic_failover_enabled?: bool
		capabilities?: [...close({
			name?: string
		})]
		consistency_policy?: [...close({
			consistency_level?:       string
			max_interval_in_seconds?: number
			max_staleness_prefix?:    number
		})]
		endpoint?:          string
		free_tier_enabled?: bool
		geo_location?: [...close({
			failover_priority?: number
			id?:                string
			location?:          string
		})]
		id?:                                         string
		ip_range_filter?:                            string
		is_virtual_network_filter_enabled?:          bool
		key_vault_key_id?:                           string
		kind?:                                       string
		location?:                                   string
		multiple_write_locations_enabled?:           bool
		name!:                                       string
		offer_type?:                                 string
		primary_key?:                                string
		primary_mongodb_connection_string?:          string
		primary_readonly_key?:                       string
		primary_readonly_mongodb_connection_string?: string
		primary_readonly_sql_connection_string?:     string
		primary_sql_connection_string?:              string
		read_endpoints?: [...string]
		resource_group_name!:                          string
		secondary_key?:                                string
		secondary_mongodb_connection_string?:          string
		timeouts?:                                     #timeouts
		secondary_readonly_key?:                       string
		secondary_readonly_mongodb_connection_string?: string
		secondary_readonly_sql_connection_string?:     string
		secondary_sql_connection_string?:              string
		tags?: [string]: string
		virtual_network_rule?: [...close({
			id?: string
		})]
		write_endpoints?: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
