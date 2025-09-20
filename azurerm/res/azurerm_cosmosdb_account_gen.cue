package res

import "list"

#azurerm_cosmosdb_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cosmosdb_account")
	close({
		access_key_metadata_writes_enabled?: bool
		analytical_storage_enabled?:         bool
		automatic_failover_enabled?:         bool
		burst_capacity_enabled?:             bool
		create_mode?:                        string
		default_identity_type?:              string
		endpoint?:                           string
		free_tier_enabled?:                  bool
		analytical_storage?: matchN(1, [#analytical_storage, list.MaxItems(1) & [...#analytical_storage]])
		id?: string
		ip_range_filter?: [...string]
		is_virtual_network_filter_enabled?:     bool
		key_vault_key_id?:                      string
		kind?:                                  string
		local_authentication_disabled?:         bool
		location!:                              string
		managed_hsm_key_id?:                    string
		minimal_tls_version?:                   string
		mongo_server_version?:                  string
		multiple_write_locations_enabled?:      bool
		name!:                                  string
		network_acl_bypass_for_azure_services?: bool
		network_acl_bypass_ids?: [...string]
		offer_type!: string
		backup?: matchN(1, [#backup, list.MaxItems(1) & [...#backup]])
		partition_merge_enabled?: bool
		primary_key?:             string
		capabilities?: matchN(1, [#capabilities, [...#capabilities]])
		capacity?: matchN(1, [#capacity, list.MaxItems(1) & [...#capacity]])
		primary_mongodb_connection_string?:          string
		primary_readonly_key?:                       string
		primary_readonly_mongodb_connection_string?: string
		consistency_policy?: matchN(1, [#consistency_policy, list.MaxItems(1) & [_, ...] & [...#consistency_policy]])
		primary_readonly_sql_connection_string?: string
		primary_sql_connection_string?:          string
		public_network_access_enabled?:          bool
		read_endpoints?: [...string]
		resource_group_name!:                          string
		secondary_key?:                                string
		secondary_mongodb_connection_string?:          string
		secondary_readonly_key?:                       string
		secondary_readonly_mongodb_connection_string?: string
		secondary_readonly_sql_connection_string?:     string
		secondary_sql_connection_string?:              string
		cors_rule?: matchN(1, [#cors_rule, list.MaxItems(1) & [...#cors_rule]])
		geo_location?: matchN(1, [#geo_location, [_, ...] & [...#geo_location]])
		tags?: [string]: string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		write_endpoints?: [...string]
		restore?: matchN(1, [#restore, list.MaxItems(1) & [...#restore]])
		timeouts?: #timeouts
		virtual_network_rule?: matchN(1, [#virtual_network_rule, [...#virtual_network_rule]])
	})

	#analytical_storage: close({
		schema_type!: string
	})

	#backup: close({
		interval_in_minutes?: number
		retention_in_hours?:  number
		storage_redundancy?:  string
		tier?:                string
		type!:                string
	})

	#capabilities: close({
		name!: string
	})

	#capacity: close({
		total_throughput_limit!: number
	})

	#consistency_policy: close({
		consistency_level!:       string
		max_interval_in_seconds?: number
		max_staleness_prefix?:    number
	})

	#cors_rule: close({
		allowed_headers!: [...string]
		allowed_methods!: [...string]
		allowed_origins!: [...string]
		exposed_headers!: [...string]
		max_age_in_seconds?: number
	})

	#geo_location: close({
		failover_priority!: number
		id?:                string
		location!:          string
		zone_redundant?:    bool
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#restore: close({
		database?: matchN(1, [_#defs."/$defs/restore/$defs/database", [..._#defs."/$defs/restore/$defs/database"]])
		gremlin_database?: matchN(1, [_#defs."/$defs/restore/$defs/gremlin_database", [..._#defs."/$defs/restore/$defs/gremlin_database"]])
		restore_timestamp_in_utc!:   string
		source_cosmosdb_account_id!: string
		tables_to_restore?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#virtual_network_rule: close({
		id!:                                   string
		ignore_missing_vnet_service_endpoint?: bool
	})

	_#defs: "/$defs/restore/$defs/database": close({
		collection_names?: [...string]
		name!: string
	})

	_#defs: "/$defs/restore/$defs/gremlin_database": close({
		graph_names?: [...string]
		name!: string
	})
}
