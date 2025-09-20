package data

#azurerm_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_snapshot")
	close({
		creation_option?: string
		disk_size_gb?:    number
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
		id?:                     string
		name!:                   string
		os_type?:                string
		resource_group_name!:    string
		source_resource_id?:     string
		timeouts?:               #timeouts
		source_uri?:             string
		storage_account_id?:     string
		time_created?:           string
		trusted_launch_enabled?: bool
	})

	#timeouts: close({
		read?: string
	})
}
