package res

import "list"

#google_filestore_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_filestore_instance")
	close({
		// Creation timestamp in RFC3339 text format.
		create_time?: string

		// Indicates whether the instance is protected against deletion.
		deletion_protection_enabled?: bool

		// The reason for enabling deletion protection.
		deletion_protection_reason?: string

		// A description of the instance.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Output only fields for replication configuration.
		effective_replication?: [...close({
			replicas?: [...close({
				last_active_sync_time?: string
				peer_instance?:         string
				state?:                 string
				state_reasons?: [...string]
			})]
			role?: string
		})]

		// Server-specified ETag for the instance resource to prevent
		// simultaneous updates from overwriting each other.
		etag?: string
		id?:   string

		// KMS key name used for data encryption.
		kms_key_name?: string

		// Resource labels to represent user-provided metadata.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The name of the location of the instance. This can be a region
		// for ENTERPRISE tier instances.
		location?: string
		file_shares?: matchN(1, [#file_shares, list.MaxItems(1) & [_, ...] & [...#file_shares]])
		initial_replication?: matchN(1, [#initial_replication, list.MaxItems(1) & [...#initial_replication]])
		networks?: matchN(1, [#networks, [_, ...] & [...#networks]])
		performance_config?: matchN(1, [#performance_config, list.MaxItems(1) & [...#performance_config]])
		timeouts?: #timeouts

		// The resource name of the instance.
		name!:    string
		project?: string

		// Either NFSv3, for using NFS version 3 as file sharing protocol,
		// or NFSv4.1, for using NFS version 4.1 as file sharing protocol.
		// NFSv4.1 can be used with HIGH_SCALE_SSD, ZONAL, REGIONAL and
		// ENTERPRISE.
		// The default is NFSv3. Default value: "NFS_V3" Possible values:
		// ["NFS_V3", "NFS_V4_1"]
		protocol?: string

		// A map of resource manager tags. Resource manager tag keys
		// and values have the same definition as resource manager
		// tags. Keys must be in the format tagKeys/{tag_key_id},
		// and values are in the format tagValues/456. The field is
		// ignored when empty. The field is immutable and causes
		// resource replacement when mutated. This field is only set
		// at create time and modifying this field after creation
		// will trigger recreation. To apply tags to an existing
		// resource, see the 'google_tags_tag_value' resource.
		tags?: [string]: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The service tier of the instance.
		// Possible values include: STANDARD, PREMIUM, BASIC_HDD,
		// BASIC_SSD, HIGH_SCALE_SSD, ZONAL, REGIONAL and ENTERPRISE
		tier!: string
	})

	#file_shares: close({
		// File share capacity in GiB. This must be at least 1024 GiB
		// for the standard tier, or 2560 GiB for the premium tier.
		capacity_gb!: number
		nfs_export_options?: matchN(1, [_#defs."/$defs/file_shares/$defs/nfs_export_options", list.MaxItems(10) & [..._#defs."/$defs/file_shares/$defs/nfs_export_options"]])

		// The name of the fileshare (16 characters or less)
		name!: string

		// The resource name of the backup, in the format
		// projects/{projectId}/locations/{locationId}/backups/{backupId},
		// that this file share has been restored from.
		source_backup?: string
	})

	#initial_replication: close({
		replicas?: matchN(1, [_#defs."/$defs/initial_replication/$defs/replicas", [..._#defs."/$defs/initial_replication/$defs/replicas"]])

		// The replication role. Default value: "STANDBY" Possible values:
		// ["ROLE_UNSPECIFIED", "ACTIVE", "STANDBY"]
		role?: string
	})

	#networks: close({
		// The network connect mode of the Filestore instance.
		// If not provided, the connect mode defaults to
		// DIRECT_PEERING. Default value: "DIRECT_PEERING" Possible
		// values: ["DIRECT_PEERING", "PRIVATE_SERVICE_ACCESS",
		// "PRIVATE_SERVICE_CONNECT"]
		connect_mode?: string

		// A list of IPv4 or IPv6 addresses.
		ip_addresses?: [...string]

		// IP versions for which the instance has
		// IP addresses assigned. Possible values:
		// ["ADDRESS_MODE_UNSPECIFIED", "MODE_IPV4", "MODE_IPV6"]
		modes!: [...string]

		// The name of the GCE VPC network to which the
		// instance is connected.
		network!: string

		// A /29 CIDR block that identifies the range of IP
		// addresses reserved for this instance.
		reserved_ip_range?: string
	})

	#performance_config: close({
		fixed_iops?: matchN(1, [_#defs."/$defs/performance_config/$defs/fixed_iops", list.MaxItems(1) & [..._#defs."/$defs/performance_config/$defs/fixed_iops"]])
		iops_per_tb?: matchN(1, [_#defs."/$defs/performance_config/$defs/iops_per_tb", list.MaxItems(1) & [..._#defs."/$defs/performance_config/$defs/iops_per_tb"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/file_shares/$defs/nfs_export_options": close({
		// Either READ_ONLY, for allowing only read requests on the
		// exported directory,
		// or READ_WRITE, for allowing both read and write requests. The
		// default is READ_WRITE. Default value: "READ_WRITE" Possible
		// values: ["READ_ONLY", "READ_WRITE"]
		access_mode?: string

		// An integer representing the anonymous group id with a default
		// value of 65534.
		// Anon_gid may only be set with squashMode of ROOT_SQUASH. An
		// error will be returned
		// if this field is specified for other squashMode settings.
		anon_gid?: number

		// An integer representing the anonymous user id with a default
		// value of 65534.
		// Anon_uid may only be set with squashMode of ROOT_SQUASH. An
		// error will be returned
		// if this field is specified for other squashMode settings.
		anon_uid?: number

		// List of either IPv4 addresses, or ranges in CIDR notation which
		// may mount the file share.
		// Overlapping IP ranges are not allowed, both within and across
		// NfsExportOptions. An error will be returned.
		// The limit is 64 IP ranges/addresses for each FileShareConfig
		// among all NfsExportOptions.
		ip_ranges?: [...string]

		// Either NO_ROOT_SQUASH, for allowing root access on the exported
		// directory, or ROOT_SQUASH,
		// for not allowing root access. The default is NO_ROOT_SQUASH.
		// Default value: "NO_ROOT_SQUASH" Possible values:
		// ["NO_ROOT_SQUASH", "ROOT_SQUASH"]
		squash_mode?: string
	})

	_#defs: "/$defs/initial_replication/$defs/replicas": close({
		// The peer instance.
		peer_instance!: string
	})

	_#defs: "/$defs/performance_config/$defs/fixed_iops": close({
		// The number of IOPS to provision for the instance.
		// max_iops must be in multiple of 1000.
		max_iops?: number
	})

	_#defs: "/$defs/performance_config/$defs/iops_per_tb": close({
		// The instance max IOPS will be calculated by multiplying
		// the capacity of the instance (TB) by max_iops_per_tb,
		// and rounding to the nearest 1000. The instance max IOPS
		// will be changed dynamically based on the instance
		// capacity.
		max_iops_per_tb?: number
	})
}
