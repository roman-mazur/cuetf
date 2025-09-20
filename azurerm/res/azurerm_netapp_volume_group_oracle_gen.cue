package res

import "list"

#azurerm_netapp_volume_group_oracle: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_netapp_volume_group_oracle")
	close({
		timeouts?:               #timeouts
		account_name!:           string
		application_identifier!: string
		group_description!:      string
		id?:                     string
		location!:               string
		name!:                   string
		resource_group_name!:    string
		volume?: matchN(1, [#volume, list.MaxItems(12) & [_, _, ...] & [...#volume]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#volume: close({
		capacity_pool_id!:              string
		encryption_key_source?:         string
		id?:                            string
		key_vault_private_endpoint_id?: string
		mount_ip_addresses?: [...string]
		name!:             string
		network_features?: string
		protocols!: [...string]
		proximity_placement_group_id?: string
		security_style!:               string
		service_level!:                string
		data_protection_replication?: matchN(1, [_#defs."/$defs/volume/$defs/data_protection_replication", list.MaxItems(1) & [..._#defs."/$defs/volume/$defs/data_protection_replication"]])
		data_protection_snapshot_policy?: matchN(1, [_#defs."/$defs/volume/$defs/data_protection_snapshot_policy", list.MaxItems(1) & [..._#defs."/$defs/volume/$defs/data_protection_snapshot_policy"]])
		snapshot_directory_visible!: bool
		storage_quota_in_gb!:        number
		subnet_id!:                  string
		tags?: [string]: string
		throughput_in_mibps!: number
		volume_path!:         string
		volume_spec_name!:    string
		export_policy_rule?: matchN(1, [_#defs."/$defs/volume/$defs/export_policy_rule", list.MaxItems(5) & [_, ...] & [..._#defs."/$defs/volume/$defs/export_policy_rule"]])
		zone?: string
	})

	_#defs: "/$defs/volume/$defs/data_protection_replication": close({
		endpoint_type?:             string
		remote_volume_location!:    string
		remote_volume_resource_id!: string
		replication_frequency!:     string
	})

	_#defs: "/$defs/volume/$defs/data_protection_snapshot_policy": close({
		snapshot_policy_id!: string
	})

	_#defs: "/$defs/volume/$defs/export_policy_rule": close({
		allowed_clients!:     string
		nfsv3_enabled!:       bool
		nfsv41_enabled!:      bool
		root_access_enabled?: bool
		rule_index!:          number
		unix_read_only?:      bool
		unix_read_write?:     bool
	})
}
