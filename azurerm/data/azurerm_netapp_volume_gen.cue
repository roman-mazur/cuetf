package data

#azurerm_netapp_volume: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_netapp_volume")
	close({
		// The accept grow capacity pool for short term clone split
		// property.
		accept_grow_capacity_pool_for_short_term_clone_split?: string
		account_name!:                                         string
		data_protection_backup_policy?: [...close({
			backup_policy_id?: string
			backup_vault_id?:  string
			policy_enabled?:   bool
		})]
		data_protection_replication?: [...close({
			endpoint_type?:             string
			remote_volume_location?:    string
			remote_volume_resource_id?: string
			replication_frequency?:     string
		})]
		encryption_key_source?:         string
		id?:                            string
		key_vault_private_endpoint_id?: string
		large_volume_enabled?:          bool
		location?:                      string
		mount_ip_addresses?: [...string]
		name!:             string
		network_features?: string
		timeouts?:         #timeouts
		pool_name!:        string
		protocols?: [...string]
		resource_group_name!:                  string
		security_style?:                       string
		service_level?:                        string
		smb_access_based_enumeration_enabled?: bool
		smb_non_browsable_enabled?:            bool
		storage_quota_in_gb?:                  number
		subnet_id?:                            string
		volume_path?:                          string
		zone?:                                 string
	})

	#timeouts: close({
		read?: string
	})
}
