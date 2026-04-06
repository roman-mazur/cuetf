package data

#google_compute_storage_pool_types: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_storage_pool_types")
	close({
		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// The deprecation status associated with this storage pool type.
		deprecated?: [...close({
			deleted?:     string
			deprecated?:  string
			obsolete?:    string
			replacement?: string
			state?:       string
		})]

		// An optional description of this resource.
		description?: string

		// The unique identifier for the resource. This identifier is
		// defined by the server.
		id?: number

		// Type of the resource. Always compute#storagePoolType for
		// storage pool types.
		kind?: string

		// Maximum storage pool size in GB.
		max_pool_provisioned_capacity_gb?: number

		// Maximum provisioned IOPS.
		max_pool_provisioned_iops?: number

		// Maximum provisioned throughput.
		max_pool_provisioned_throughput?: number

		// Minimum storage pool size in GB.
		min_pool_provisioned_capacity_gb?: number

		// Minimum provisioned IOPS.
		min_pool_provisioned_iops?: number

		// Minimum provisioned throughput.
		min_pool_provisioned_throughput?: number

		// Name of the resource.
		name?:    string
		project?: string

		// Server-defined URL for the resource.
		self_link?: string

		// Server-defined URL for this resource with the resource id.
		self_link_with_id?: string

		// Name of the storage pool type.
		storage_pool_type!: string

		// The list of disk types supported in this storage pool type.
		supported_disk_types?: [...string]

		// The name of the zone.
		zone!: string
	})
}
