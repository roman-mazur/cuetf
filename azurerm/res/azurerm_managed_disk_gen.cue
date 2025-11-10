package res

import "list"

#azurerm_managed_disk: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_managed_disk")
	close({
		create_option!:              string
		disk_access_id?:             string
		disk_encryption_set_id?:     string
		disk_iops_read_only?:        number
		disk_iops_read_write?:       number
		disk_mbps_read_only?:        number
		disk_mbps_read_write?:       number
		disk_size_gb?:               number
		edge_zone?:                  string
		gallery_image_reference_id?: string
		hyper_v_generation?:         string
		id?:                         string
		image_reference_id?:         string
		location!:                   string
		logical_sector_size?:        number
		max_shares?:                 number
		name!:                       string
		network_access_policy?:      string
		encryption_settings?: matchN(1, [#encryption_settings, list.MaxItems(1) & [...#encryption_settings]])
		on_demand_bursting_enabled?:        bool
		optimized_frequent_attach_enabled?: bool
		os_type?:                           string
		performance_plus_enabled?:          bool
		public_network_access_enabled?:     bool
		resource_group_name!:               string
		secure_vm_disk_encryption_set_id?:  string
		security_type?:                     string
		timeouts?:                          #timeouts
		source_resource_id?:                string
		source_uri?:                        string
		storage_account_id?:                string
		storage_account_type!:              string
		tags?: [string]: string
		tier?:                   string
		trusted_launch_enabled?: bool
		upload_size_bytes?:      number
		zone?:                   string
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
