package res

import "list"

#azurerm_mongo_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mongo_cluster")
	close({
		administrator_password?: string
		administrator_username?: string
		authentication_methods?: [...string]
		compute_tier?: string
		connection_strings?: [...close({
			description?: string
			name?:        string
			value?:       string
		})]
		create_mode?:            string
		data_api_mode_enabled?:  bool
		high_availability_mode?: string
		id?:                     string
		customer_managed_key?: matchN(1, [#customer_managed_key, list.MaxItems(1) & [...#customer_managed_key]])
		location!: string
		name!:     string
		preview_features?: [...string]
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		public_network_access?: string
		resource_group_name!:   string
		shard_count?:           number
		source_location?:       string
		source_server_id?:      string
		storage_size_in_gb?:    number
		storage_type?:          string
		tags?: [string]: string
		restore?: matchN(1, [#restore, list.MaxItems(1) & [...#restore]])
		timeouts?: #timeouts
		version?:  string
	})

	#customer_managed_key: close({
		key_vault_key_id!:          string
		user_assigned_identity_id!: string
	})

	#identity: close({
		identity_ids!: [...string]
		type!: string
	})

	#restore: close({
		point_in_time_utc!: string
		source_id!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
