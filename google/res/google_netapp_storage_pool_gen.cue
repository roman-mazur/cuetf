package res

#google_netapp_storage_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_netapp_storage_pool")
	close({
		// Specifies the Active Directory policy to be used. Format:
		// 'projects/{{project}}/locations/{{location}}/activeDirectories/{{name}}'.
		// The policy needs to be in the same location as the storage
		// pool.
		active_directory?: string

		// Optional. True if the storage pool supports Auto Tiering
		// enabled volumes. Default is false.
		// Auto-tiering can be enabled after storage pool creation but it
		// can't be disabled once enabled.
		allow_auto_tiering?: bool

		// Available throughput of the storage pool (in MiB/s).
		available_throughput_mibps?: number

		// Capacity of the storage pool (in GiB).
		capacity_gib!: string

		// Total cold tier data rounded down to the nearest GiB used by
		// the storage pool.
		cold_tier_size_used_gib?: string

		// Optional. True if using Independent Scaling of capacity and
		// performance (Hyperdisk). Default is false.
		custom_performance_enabled?: bool

		// An optional description of this resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Flag indicating that the hot-tier threshold will be
		// auto-increased by 10% of the hot-tier when it hits 100%.
		// Default is true.
		// The increment will kick in only if the new size after increment
		// is still less than or equal to storage pool size.
		enable_hot_tier_auto_resize?: bool

		// Reports if volumes in the pool are encrypted using a
		// Google-managed encryption key or CMEK.
		encryption_type?: string

		// Total hot tier capacity for the Storage Pool. It is applicable
		// only to Flex service level.
		// It should be less than the minimum storage pool size and cannot
		// be more than the current storage pool size. It cannot be
		// decreased once set.
		hot_tier_size_gib?: string

		// Total hot tier data rounded down to the nearest GiB used by the
		// storage pool.
		hot_tier_size_used_gib?: string
		id?:                     string

		// Specifies the CMEK policy to be used for volume encryption.
		// Format:
		// 'projects/{{project}}/locations/{{location}}/kmsConfigs/{{name}}'.
		// The policy needs to be in the same location as the storage
		// pool.
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

		// When enabled, the volumes uses Active Directory as LDAP name
		// service for UID/GID lookups. Required to enable extended group
		// support for NFSv3,
		// using security identifiers for NFSv4.1 or principal names for
		// kerberized NFSv4.1.
		ldap_enabled?: bool

		// Name of the location. For zonal Flex pools specify a zone name,
		// in all other cases a region name.
		location!: string
		timeouts?: #timeouts

		// The resource name of the storage pool. Needs to be unique per
		// location/region.
		name!: string

		// VPC network name with format:
		// 'projects/{{project}}/global/networks/{{network}}'
		network!: string
		project?: string

		// QoS (Quality of Service) type of the storage pool.
		// Possible values are: AUTO, MANUAL. Possible values:
		// ["QOS_TYPE_UNSPECIFIED", "AUTO", "MANUAL"]
		qos_type?: string

		// Specifies the replica zone for regional Flex pools. 'zone' and
		// 'replica_zone' values can be swapped to initiate a
		// [zone
		// switch](https://cloud.google.com/netapp/volumes/docs/configure-and-use/storage-pools/edit-or-delete-storage-pool#switch_active_and_replica_zones).
		replica_zone?: string

		// Service level of the storage pool. Possible values: ["PREMIUM",
		// "EXTREME", "STANDARD", "FLEX"]
		service_level!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Optional. Custom Performance Total IOPS of the pool If not
		// provided, it will be calculated based on the
		// totalThroughputMibps
		total_iops?: string

		// Optional. Custom Performance Total Throughput of the pool (in
		// MiB/s).
		total_throughput_mibps?: string

		// Type of the storage pool.
		// This field is used to control whether the pool supports FILE
		// based volumes only or UNIFIED (both FILE and BLOCK) volumes.
		// If not specified during creation, it defaults to FILE. Possible
		// values: ["STORAGE_POOL_TYPE_UNSPECIFIED", "FILE", "UNIFIED"]
		type?: string

		// Size allocated to volumes in the storage pool (in GiB).
		volume_capacity_gib?: string

		// Number of volume in the storage pool.
		volume_count?: number

		// Specifies the active zone for regional Flex pools. 'zone' and
		// 'replica_zone' values can be swapped to initiate a
		// [zone
		// switch](https://cloud.google.com/netapp/volumes/docs/configure-and-use/storage-pools/edit-or-delete-storage-pool#switch_active_and_replica_zones).
		// If you want to create a zonal Flex pool, specify a zone name
		// for 'location' and omit 'zone'.
		zone?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
