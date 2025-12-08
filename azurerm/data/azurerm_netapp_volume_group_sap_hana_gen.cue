package data

#azurerm_netapp_volume_group_sap_hana: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_netapp_volume_group_sap_hana")
	close({
		timeouts?:               #timeouts
		account_name!:           string
		application_identifier?: string
		group_description?:      string
		id?:                     string
		location?:               string
		name!:                   string
		resource_group_name!:    string
		volume?: [...close({
			capacity_pool_id?: string
			data_protection_replication?: [...close({
				endpoint_type?:             string
				remote_volume_location?:    string
				remote_volume_resource_id?: string
				replication_frequency?:     string
			})]
			data_protection_snapshot_policy?: [...close({
				snapshot_policy_id?: string
			})]
			export_policy_rule?: [...close({
				allowed_clients?:     string
				nfsv3_enabled?:       bool
				nfsv41_enabled?:      bool
				root_access_enabled?: bool
				rule_index?:          number
				unix_read_only?:      bool
				unix_read_write?:     bool
			})]
			id?: string
			mount_ip_addresses?: [...string]
			name?: string
			protocols?: [...string]
			proximity_placement_group_id?: string
			security_style?:               string
			service_level?:                string
			snapshot_directory_visible?:   bool
			storage_quota_in_gb?:          number
			subnet_id?:                    string
			tags?: [string]: string
			throughput_in_mibps?: number
			volume_path?:         string
			volume_spec_name?:    string
		})]
	})

	#timeouts: close({
		read?: string
	})
}
