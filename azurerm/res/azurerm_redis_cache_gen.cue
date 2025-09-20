package res

import "list"

#azurerm_redis_cache: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_redis_cache")
	close({
		access_keys_authentication_enabled?: bool
		capacity!:                           number
		family!:                             string
		hostname?:                           string
		id?:                                 string
		location!:                           string
		minimum_tls_version?:                string
		name!:                               string
		non_ssl_port_enabled?:               bool
		port?:                               number
		primary_access_key?:                 string
		primary_connection_string?:          string
		private_static_ip_address?:          string
		public_network_access_enabled?:      bool
		redis_version?:                      string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		replicas_per_master?:         number
		replicas_per_primary?:        number
		resource_group_name!:         string
		secondary_access_key?:        string
		secondary_connection_string?: string
		shard_count?:                 number
		sku_name!:                    string
		ssl_port?:                    number
		subnet_id?:                   string
		tags?: [string]:            string
		tenant_settings?: [string]: string
		patch_schedule?: matchN(1, [#patch_schedule, [...#patch_schedule]])
		zones?: [...string]
		redis_configuration?: matchN(1, [#redis_configuration, list.MaxItems(1) & [...#redis_configuration]])
		timeouts?: #timeouts
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#patch_schedule: close({
		day_of_week!:        string
		maintenance_window?: string
		start_hour_utc?:     number
	})

	#redis_configuration: close({
		active_directory_authentication_enabled?: bool
		aof_backup_enabled?:                      bool
		aof_storage_connection_string_0?:         string
		aof_storage_connection_string_1?:         string
		authentication_enabled?:                  bool
		data_persistence_authentication_method?:  string
		maxclients?:                              number
		maxfragmentationmemory_reserved?:         number
		maxmemory_delta?:                         number
		maxmemory_policy?:                        string
		maxmemory_reserved?:                      number
		notify_keyspace_events?:                  string
		rdb_backup_enabled?:                      bool
		rdb_backup_frequency?:                    number
		rdb_backup_max_snapshot_count?:           number
		rdb_storage_connection_string?:           string
		storage_account_subscription_id?:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
