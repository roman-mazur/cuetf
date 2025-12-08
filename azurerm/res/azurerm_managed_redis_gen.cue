package res

import "list"

#azurerm_managed_redis: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_managed_redis")
	close({
		high_availability_enabled?: bool
		hostname?:                  string
		id?:                        string
		location!:                  string
		name!:                      string
		customer_managed_key?: matchN(1, [#customer_managed_key, list.MaxItems(1) & [...#customer_managed_key]])
		public_network_access?: string
		default_database?: matchN(1, [#default_database, list.MaxItems(1) & [...#default_database]])
		resource_group_name!: string
		sku_name!:            string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		timeouts?: #timeouts
		tags?: [string]: string
	})

	#customer_managed_key: close({
		key_vault_key_id!:          string
		user_assigned_identity_id!: string
	})

	#default_database: close({
		access_keys_authentication_enabled?:            bool
		client_protocol?:                               string
		clustering_policy?:                             string
		eviction_policy?:                               string
		geo_replication_group_name?:                    string
		id?:                                            string
		persistence_append_only_file_backup_frequency?: string
		persistence_redis_database_backup_frequency?:   string
		port?:                                          number
		module?: matchN(1, [_#defs."/$defs/default_database/$defs/module", list.MaxItems(4) & [..._#defs."/$defs/default_database/$defs/module"]])
		primary_access_key?:   string
		secondary_access_key?: string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/default_database/$defs/module": close({
		args?:    string
		name!:    string
		version?: string
	})
}
