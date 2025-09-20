package res

import "list"

#azurerm_netapp_volume: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_netapp_volume")
	close({
		// While auto splitting the short term clone volume, if the parent
		// pool does not have enough space to accommodate the volume
		// after split, it will be automatically resized, which will lead
		// to increased billing. To accept capacity pool size auto grow
		// and create a short term clone volume, set the property as
		// accepted. Can only be used in conjunction with
		// `create_from_snapshot_resource_id`.
		accept_grow_capacity_pool_for_short_term_clone_split?: string
		account_name!:                                         string
		azure_vmware_data_store_enabled?:                      bool
		create_from_snapshot_resource_id?:                     string
		encryption_key_source?:                                string
		id?:                                                   string

		// Enable to allow Kerberos secured volumes. Requires appropriate
		// export rules as well as the parent `azurerm_netapp_account`
		// having a defined AD connection.
		kerberos_enabled?:              bool
		key_vault_private_endpoint_id?: string

		// Indicates whether the volume is a large volume.
		large_volume_enabled?: bool
		cool_access?: matchN(1, [#cool_access, list.MaxItems(1) & [...#cool_access]])
		location!: string
		mount_ip_addresses?: [...string]
		name!: string

		// SMB3 encryption option should be used only for SMB/DualProtocol
		// volumes. Using it for any other workloads is not supported.
		smb3_protocol_encryption_enabled?: bool
		network_features?:                 string
		pool_name!:                        string
		protocols?: [...string]
		resource_group_name!: string
		security_style?:      string
		service_level!:       string

		// Enable access based enumeration setting for SMB/Dual Protocol
		// volume. When enabled, users who do not have permission to
		// access a shared folder or file underneath it, do not see that
		// shared resource displayed in their environment.
		smb_access_based_enumeration_enabled?: bool

		// Continuous availability option should be used only for SQL and
		// FSLogix workloads. Using it for any other SMB workloads is not
		// supported.
		smb_continuous_availability_enabled?: bool

		// Enable non browsable share setting for SMB/Dual Protocol
		// volume. When enabled, it restricts windows clients to browse
		// the share
		smb_non_browsable_enabled?: bool
		data_protection_backup_policy?: matchN(1, [#data_protection_backup_policy, list.MaxItems(1) & [...#data_protection_backup_policy]])
		snapshot_directory_visible?: bool
		storage_quota_in_gb!:        number
		subnet_id!:                  string
		data_protection_replication?: matchN(1, [#data_protection_replication, list.MaxItems(1) & [...#data_protection_replication]])
		data_protection_snapshot_policy?: matchN(1, [#data_protection_snapshot_policy, list.MaxItems(1) & [...#data_protection_snapshot_policy]])
		tags?: [string]: string
		export_policy_rule?: matchN(1, [#export_policy_rule, list.MaxItems(5) & [...#export_policy_rule]])
		throughput_in_mibps?: number
		timeouts?:            #timeouts
		volume_path!:         string
		zone?:                string
	})

	#cool_access: close({
		coolness_period_in_days!: number
		retrieval_policy!:        string
		tiering_policy!:          string
	})

	#data_protection_backup_policy: close({
		// The ID of the backup policy to associate with this volume.
		backup_policy_id!: string

		// The ID of the backup vault to associate with this volume.
		backup_vault_id!: string

		// If set to false, the backup policy will not be enabled on this
		// volume, thus disabling scheduled backups.
		policy_enabled?: bool
	})

	#data_protection_replication: close({
		endpoint_type?:             string
		remote_volume_location!:    string
		remote_volume_resource_id!: string
		replication_frequency!:     string
	})

	#data_protection_snapshot_policy: close({
		snapshot_policy_id!: string
	})

	#export_policy_rule: close({
		allowed_clients!: [...string]
		kerberos_5_read_only_enabled?:   bool
		kerberos_5_read_write_enabled?:  bool
		kerberos_5i_read_only_enabled?:  bool
		kerberos_5i_read_write_enabled?: bool
		kerberos_5p_read_only_enabled?:  bool
		kerberos_5p_read_write_enabled?: bool
		protocol?: [...string]
		root_access_enabled?: bool
		rule_index!:          number
		unix_read_only?:      bool
		unix_read_write?:     bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
