package data

#azurerm_managed_disks: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_managed_disks")
	close({
		timeouts?: #timeouts
		disk?: [...close({
			create_option?:          string
			disk_access_id?:         string
			disk_encryption_set_id?: string
			disk_iops_read_write?:   number
			disk_mbps_read_write?:   number
			disk_size_in_gb?:        number
			encryption_settings?: [...close({
				disk_encryption_key?: [...close({
					secret_url?:      string
					source_vault_id?: string
				})]
				enabled?: bool
				key_encryption_key?: [...close({
					key_url?:         string
					source_vault_id?: string
				})]
			})]
			id?:                    string
			image_reference_id?:    string
			location?:              string
			name?:                  string
			network_access_policy?: string
			os_type?:               string
			source_resource_id?:    string
			source_uri?:            string
			storage_account_id?:    string
			storage_account_type?:  string
			tags?: [string]: string
			zones?: [...string]
		})]
		id?:                  string
		resource_group_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
