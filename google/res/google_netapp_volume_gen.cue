package res

import "list"

#google_netapp_volume: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_netapp_volume")
	close({
		// Reports the resource name of the Active Directory policy being
		// used. Inherited from storage pool.
		active_directory?: string
		backup_config?: matchN(1, [#backup_config, list.MaxItems(1) & [...#backup_config]])

		// Capacity of the volume (in GiB).
		capacity_gib!: string

		// Output only. Size of the volume cold tier data in GiB.
		cold_tier_size_gib?: string

		// Create time of the volume. A timestamp in RFC3339 UTC "Zulu"
		// format. Examples: "2023-06-22T09:13:01.617Z".
		create_time?: string

		// Policy to determine if the volume should be deleted forcefully.
		// Volumes may have nested snapshot resources. Deleting such a
		// volume will fail.
		// Setting this parameter to FORCE will delete volumes including
		// nested snapshots.
		// Possible values: DEFAULT, FORCE.
		deletion_policy?: string

		// An optional description of this resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Reports the data-at-rest encryption type of the volume.
		// Inherited from storage pool.
		encryption_type?: string

		// Indicates whether the volume is part of a volume replication
		// relationship.
		has_replication?: bool

		// Total hot tier data rounded down to the nearest GiB used by the
		// volume. This field is only used for flex Service Level
		hot_tier_size_used_gib?: string

		// Flag indicating if the volume is a kerberos volume or not,
		// export policy rules control kerberos security modes (krb5,
		// krb5i, krb5p).
		kerberos_enabled?: bool
		id?:               string

		// Reports the CMEK policy resurce name being used for volume
		// encryption. Inherited from storage pool.
		kms_config?: string

		// Labels as key value pairs. Example: '{ "owner": "Bob",
		// "department": "finance", "purpose": "testing" }'.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Optional. Flag indicating if the volume will be a large
		// capacity volume or a regular volume.
		large_capacity?: bool

		// Flag indicating if the volume is NFS LDAP enabled or not.
		// Inherited from storage pool.
		ldap_enabled?: bool

		// Name of the pool location. Usually a region name, expect for
		// some STANDARD service level pools which require a zone name.
		location!: string

		// Reports mount instructions for this volume.
		mount_options?: [...close({
			export?:       string
			export_full?:  string
			instructions?: string
			ip_address?:   string
			protocol?:     string
		})]

		// Optional. Flag indicating if the volume will have an IP address
		// per node for volumes supporting multiple IP endpoints.
		// Only the volume with largeCapacity will be allowed to have
		// multiple endpoints.
		multiple_endpoints?: bool

		// The name of the volume. Needs to be unique per location.
		name!: string

		// VPC network name with format:
		// 'projects/{{project}}/global/networks/{{network}}'. Inherited
		// from storage pool.
		network?: string

		// The protocol of the volume. Allowed combinations are
		// '['NFSV3']', '['NFSV4']', '['SMB']', '['NFSV3', 'NFSV4']',
		// '['SMB', 'NFSV3']' and '['SMB', 'NFSV4']'. Possible values:
		// ["NFSV3", "NFSV4", "SMB", "ISCSI"]
		protocols!: [...string]
		block_devices?: matchN(1, [#block_devices, [...#block_devices]])
		cache_parameters?: matchN(1, [#cache_parameters, list.MaxItems(1) & [...#cache_parameters]])
		export_policy?: matchN(1, [#export_policy, list.MaxItems(1) & [...#export_policy]])
		hybrid_replication_parameters?: matchN(1, [#hybrid_replication_parameters, list.MaxItems(1) & [...#hybrid_replication_parameters]])
		restore_parameters?: matchN(1, [#restore_parameters, list.MaxItems(1) & [...#restore_parameters]])
		snapshot_policy?: matchN(1, [#snapshot_policy, list.MaxItems(1) & [...#snapshot_policy]])
		tiering_policy?: matchN(1, [#tiering_policy, list.MaxItems(1) & [...#tiering_policy]])
		timeouts?: #timeouts
		project?:  string

		// Name of the Private Service Access allocated range. Inherited
		// from storage pool.
		psa_range?: string

		// Specifies the replica zone for regional volume.
		replica_zone?: string

		// List of actions that are restricted on this volume. Possible
		// values: ["DELETE"]
		restricted_actions?: [...string]

		// Security Style of the Volume. Use UNIX to use UNIX or NFSV4
		// ACLs for file permissions.
		// Use NTFS to use NTFS ACLs for file permissions. Can only be set
		// for volumes which use SMB together with NFS as protocol.
		// Possible values: ["NTFS", "UNIX"]
		security_style?: string

		// Service level of the volume. Inherited from storage pool.
		// Supported values are : PREMIUM, EXTREME, STANDARD, FLEX.
		service_level?: string

		// Share name (SMB) or export path (NFS) of the volume. Needs to
		// be unique per location.
		share_name?: string

		// Settings for volumes with SMB access. Possible values:
		// ["ENCRYPT_DATA", "BROWSABLE", "CHANGE_NOTIFY",
		// "NON_BROWSABLE", "OPLOCKS", "SHOW_SNAPSHOT",
		// "SHOW_PREVIOUS_VERSIONS", "ACCESS_BASED_ENUMERATION",
		// "CONTINUOUSLY_AVAILABLE"]
		smb_settings?: [...string]

		// If enabled, a NFS volume will contain a read-only .snapshot
		// directory which provides access to each of the volume's
		// snapshots. Will enable "Previous Versions" support for SMB.
		snapshot_directory?: bool

		// State of the volume.
		state?: string

		// State details of the volume.
		state_details?: string

		// Name of the storage pool to create the volume in. Pool needs
		// enough spare capacity to accommodate the volume.
		storage_pool!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Optional. Custom Performance Total Throughput of the pool (in
		// MiB/s).
		throughput_mibps?: number

		// Unix permission the mount point will be created with. Default
		// is 0770. Applicable for UNIX security style volumes only.
		unix_permissions?: string

		// Used capacity of the volume (in GiB). This is computed
		// periodically and it does not represent the realtime usage.
		used_gib?: string

		// Specifies the active zone for regional volume.
		zone?: string
	})

	#backup_config: close({
		// Specify a single backup policy ID for scheduled backups.
		// Format:
		// 'projects/{{projectId}}/locations/{{location}}/backupPolicies/{{backupPolicyName}}'
		backup_policies?: [...string]

		// ID of the backup vault to use. A backup vault is reqired to
		// create manual or scheduled backups.
		// Format:
		// 'projects/{{projectId}}/locations/{{location}}/backupVaults/{{backupVaultName}}'
		backup_vault?: string

		// When set to true, scheduled backup is enabled on the volume.
		// Omit if no backup_policy is specified.
		scheduled_backup_enabled?: bool
	})

	#block_devices: close({
		// A list of host groups that identify hosts that can mount the
		// block volume.
		// Format:
		// 'projects/{project_id}/locations/{location}/hostGroups/{host_group_id}'
		// This field can be updated after the block device is created.
		host_groups?: [...string]

		// Device identifier of the Block volume. This represents
		// lun_serial_number
		// for ISCSI volumes
		identifier?: string

		// User-defined name for the block device, unique within the
		// Volume. In case
		// no user input is provided, name will be autogenerated in the
		// backend.
		// The name must meet the following requirements:
		// * Be between 1 and 255 characters long.
		// * Contain only uppercase or lowercase letters (A-Z, a-z),
		// numbers (0-9),
		// and the following special characters: "-", "_", "}", "{", ".".
		// * Spaces are not allowed.
		name?: string

		// The OS type of the volume.
		// This field can't be changed after the block device is created.
		// Possible values: ["LINUX", "WINDOWS", "ESXI"]
		os_type!: string

		// The size of the block device in GiB.
		// Any value provided in this field during Volume creation is
		// IGNORED.
		// The block device's size is system-managed and will be set to
		// match
		// the parent Volume's 'capacity_gib'.
		size_gib?: number
	})

	#cache_parameters: close({
		// State of the cache volume indicating the peering status.
		cache_state?: string

		// Copy-paste-able commands to be used on user's ONTAP to accept
		// peering requests.
		command?: string

		// Optional. Field indicating whether cache volume as global file
		// lock enabled.
		enable_global_file_lock?: bool

		// Temporary passphrase generated to accept cluster peering
		// command.
		passphrase?: string

		// Required. Name of the origin volume's ONTAP cluster.
		peer_cluster_name?: string

		// Required. List of IC LIF addresses of the origin volume's ONTAP
		// cluster.
		peer_ip_addresses?: [...string]

		// Required. Name of the origin volume's SVM.
		peer_svm_name?: string
		cache_config?: matchN(1, [_#defs."/$defs/cache_parameters/$defs/cache_config", list.MaxItems(1) & [..._#defs."/$defs/cache_parameters/$defs/cache_config"]])

		// Required. Name of the origin volume for the cache volume.
		peer_volume_name?: string

		// Optional. Expiration time for the peering command to be
		// executed on user's ONTAP. A timestamp in RFC3339 UTC "Zulu"
		// format. Examples: "2023-06-22T09:13:01.617Z".
		peering_command_expiry_time?: string

		// Detailed description of the current cache state.
		state_details?: string
	})

	#export_policy: close({
		rules!: matchN(1, [_#defs."/$defs/export_policy/$defs/rules", [_, ...] & [..._#defs."/$defs/export_policy/$defs/rules"]])
	})

	#hybrid_replication_parameters: close({
		// Optional. Name of source cluster location associated with the
		// Hybrid replication. This is a free-form field for the display
		// purpose only.
		cluster_location?: string

		// Optional. Description of the replication.
		description?: string

		// Optional. Type of the volume's hybrid replication. Possible
		// values: ["MIGRATION", "CONTINUOUS_REPLICATION",
		// "ONPREM_REPLICATION", "REVERSE_ONPREM_REPLICATION"]
		hybrid_replication_type?: string

		// Optional. Labels to be added to the replication as the key
		// value pairs.
		// An object containing a list of "key": value pairs. Example: {
		// "name": "wrench", "mass": "1.3kg", "count": "3" }.
		labels?: [string]: string

		// Optional. Constituent volume count for large volume.
		large_volume_constituent_count?: number

		// Required. Name of the user's local source cluster to be peered
		// with the destination cluster.
		peer_cluster_name?: string

		// Required. List of node ip addresses to be peered with.
		peer_ip_addresses?: [...string]

		// Required. Name of the user's local source vserver svm to be
		// peered with the destination vserver svm.
		peer_svm_name?: string

		// Required. Name of the user's local source volume to be peered
		// with the destination volume.
		peer_volume_name?: string

		// Required. Desired name for the replication of this volume.
		replication?: string

		// Optional. Replication Schedule for the replication created.
		// Possible values: ["EVERY_10_MINUTES", "HOURLY", "DAILY"]
		replication_schedule?: string
	})

	#restore_parameters: close({
		// Full name of the backup to use for creating this volume.
		// 'source_snapshot' and 'source_backup' cannot be used
		// simultaneously.
		// Format:
		// 'projects/{{project}}/locations/{{location}}/backupVaults/{{backupVaultId}}/backups/{{backup}}'.
		source_backup?: string

		// Full name of the snapshot to use for creating this volume.
		// 'source_snapshot' and 'source_backup' cannot be used
		// simultaneously.
		// Format:
		// 'projects/{{project}}/locations/{{location}}/volumes/{{volume}}/snapshots/{{snapshot}}'.
		source_snapshot?: string
	})

	#snapshot_policy: close({
		daily_schedule?: matchN(1, [_#defs."/$defs/snapshot_policy/$defs/daily_schedule", list.MaxItems(1) & [..._#defs."/$defs/snapshot_policy/$defs/daily_schedule"]])
		hourly_schedule?: matchN(1, [_#defs."/$defs/snapshot_policy/$defs/hourly_schedule", list.MaxItems(1) & [..._#defs."/$defs/snapshot_policy/$defs/hourly_schedule"]])
		monthly_schedule?: matchN(1, [_#defs."/$defs/snapshot_policy/$defs/monthly_schedule", list.MaxItems(1) & [..._#defs."/$defs/snapshot_policy/$defs/monthly_schedule"]])
		weekly_schedule?: matchN(1, [_#defs."/$defs/snapshot_policy/$defs/weekly_schedule", list.MaxItems(1) & [..._#defs."/$defs/snapshot_policy/$defs/weekly_schedule"]])

		// Enables automated snapshot creation according to defined
		// schedule. Default is false.
		// To disable automatic snapshot creation you have to remove the
		// whole snapshot_policy block.
		enabled?: bool
	})

	#tiering_policy: close({
		// Optional. Time in days to mark the volume's data block as cold
		// and make it eligible for tiering, can be range from 2-183.
		// Default is 31.
		cooling_threshold_days?: number

		// Optional. Flag indicating that the hot tier bypass mode is
		// enabled. Default is false.
		// Only applicable to Flex service level.
		hot_tier_bypass_mode_enabled?: bool

		// Optional. Flag indicating if the volume has tiering policy
		// enable/pause. Default is PAUSED. Default value: "PAUSED"
		// Possible values: ["ENABLED", "PAUSED"]
		tier_action?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/cache_parameters/$defs/cache_config": close({
		// Optional. Flag indicating whether a CIFS change notification is
		// enabled for the FlexCache volume.
		cifs_change_notify_enabled?: bool
	})

	_#defs: "/$defs/export_policy/$defs/rules": close({
		// Defines the access type for clients matching the
		// 'allowedClients' specification. Possible values: ["READ_ONLY",
		// "READ_WRITE", "READ_NONE"]
		access_type?: string

		// Defines the client ingress specification (allowed clients) as a
		// comma separated list with IPv4 CIDRs or IPv4 host addresses.
		allowed_clients?: string

		// An integer representing the anonymous user ID. Range is 0 to
		// 4294967295. Required when 'squash_mode' is 'ALL_SQUASH'.
		anon_uid?: number

		// If enabled, the root user (UID = 0) of the specified clients
		// doesn't get mapped to nobody (UID = 65534). This is also known
		// as no_root_squash.
		// It's overwritten by the squash_mode parameter. Use either
		// squash_mode or has_root_access.
		has_root_access?: string

		// If enabled (true) the rule defines a read only access for
		// clients matching the 'allowedClients' specification. It
		// enables nfs clients to mount using 'authentication' kerberos
		// security mode.
		kerberos5_read_only?: bool

		// If enabled (true) the rule defines read and write access for
		// clients matching the 'allowedClients' specification. It
		// enables nfs clients to mount using 'authentication' kerberos
		// security mode. The 'kerberos5ReadOnly' value is ignored if
		// this is enabled.
		kerberos5_read_write?: bool

		// If enabled (true) the rule defines a read only access for
		// clients matching the 'allowedClients' specification. It
		// enables nfs clients to mount using 'integrity' kerberos
		// security mode.
		kerberos5i_read_only?: bool

		// If enabled (true) the rule defines read and write access for
		// clients matching the 'allowedClients' specification. It
		// enables nfs clients to mount using 'integrity' kerberos
		// security mode. The 'kerberos5iReadOnly' value is ignored if
		// this is enabled.
		kerberos5i_read_write?: bool

		// If enabled (true) the rule defines a read only access for
		// clients matching the 'allowedClients' specification. It
		// enables nfs clients to mount using 'privacy' kerberos security
		// mode.
		kerberos5p_read_only?: bool

		// If enabled (true) the rule defines read and write access for
		// clients matching the 'allowedClients' specification. It
		// enables nfs clients to mount using 'privacy' kerberos security
		// mode. The 'kerberos5pReadOnly' value is ignored if this is
		// enabled.
		kerberos5p_read_write?: bool

		// Enable to apply the export rule to NFSV3 clients.
		nfsv3?: bool

		// Enable to apply the export rule to NFSV4.1 clients.
		nfsv4?: bool

		// SquashMode defines how remote user privileges are restricted
		// when accessing an NFS export. It controls how the user
		// identities (like root) are mapped to anonymous users to limit
		// access and enforce security.
		// It overwrites the has_root_access parameter. Use either
		// squash_mode or has_root_access. For ALL_SQUASH, access_type
		// needs to be set to READ_WRITE. Possible values:
		// ["SQUASH_MODE_UNSPECIFIED", "NO_ROOT_SQUASH", "ROOT_SQUASH",
		// "ALL_SQUASH"]
		squash_mode?: string
	})

	_#defs: "/$defs/snapshot_policy/$defs/daily_schedule": close({
		// Set the hour to create the snapshot (0-23), defaults to
		// midnight (0).
		hour?: number

		// Set the minute of the hour to create the snapshot (0-59),
		// defaults to the top of the hour (0).
		minute?: number

		// The maximum number of snapshots to keep for the daily schedule.
		snapshots_to_keep!: number
	})

	_#defs: "/$defs/snapshot_policy/$defs/hourly_schedule": close({
		// Set the minute of the hour to create the snapshot (0-59),
		// defaults to the top of the hour (0).
		minute?: number

		// The maximum number of snapshots to keep for the hourly
		// schedule.
		snapshots_to_keep!: number
	})

	_#defs: "/$defs/snapshot_policy/$defs/monthly_schedule": close({
		// Set the day or days of the month to make a snapshot (1-31).
		// Accepts a comma separated number of days. Defaults to '1'.
		days_of_month?: string

		// Set the hour to create the snapshot (0-23), defaults to
		// midnight (0).
		hour?: number

		// Set the minute of the hour to create the snapshot (0-59),
		// defaults to the top of the hour (0).
		minute?: number

		// The maximum number of snapshots to keep for the monthly
		// schedule
		snapshots_to_keep!: number
	})

	_#defs: "/$defs/snapshot_policy/$defs/weekly_schedule": close({
		// Set the day or days of the week to make a snapshot. Accepts a
		// comma separated days of the week. Defaults to 'Sunday'.
		day?: string

		// Set the hour to create the snapshot (0-23), defaults to
		// midnight (0).
		hour?: number

		// Set the minute of the hour to create the snapshot (0-59),
		// defaults to the top of the hour (0).
		minute?: number

		// The maximum number of snapshots to keep for the weekly
		// schedule.
		snapshots_to_keep!: number
	})
}
