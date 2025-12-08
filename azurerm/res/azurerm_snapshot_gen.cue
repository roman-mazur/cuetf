package res

import "list"

#azurerm_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_snapshot")
	close({
		create_option!:         string
		disk_access_id?:        string
		disk_size_gb?:          number
		id?:                    string
		incremental_enabled?:   bool
		location!:              string
		name!:                  string
		network_access_policy?: string
		encryption_settings?: matchN(1, [#encryption_settings, list.MaxItems(1) & [...#encryption_settings]])
		public_network_access_enabled?: bool
		resource_group_name!:           string
		source_resource_id?:            string
		timeouts?:                      #timeouts
		source_uri?:                    string
		storage_account_id?:            string
		tags?: [string]: string
		trusted_launch_enabled?: bool
	})

	#encryption_settings: close({
		disk_encryption_key!: matchN(1, [_#defs."/$defs/encryption_settings/$defs/disk_encryption_key", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/encryption_settings/$defs/disk_encryption_key"]])
		key_encryption_key?: matchN(1, [_#defs."/$defs/encryption_settings/$defs/key_encryption_key", list.MaxItems(1) & [..._#defs."/$defs/encryption_settings/$defs/key_encryption_key"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/encryption_settings/$defs/disk_encryption_key": close({
		secret_url!:      string
		source_vault_id!: string
	})

	_#defs: "/$defs/encryption_settings/$defs/key_encryption_key": close({
		key_url!:         string
		source_vault_id!: string
	})
}
