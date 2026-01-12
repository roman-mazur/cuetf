package data

#google_compute_storage_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_storage_pool")
	close({
		// Provisioning type of the byte capacity of the pool. Possible
		// values: ["STANDARD", "ADVANCED"]
		capacity_provisioning_type?: string

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// Whether Terraform will be prevented from destroying the
		// StoragePool.
		// When the field is set to true or unset in Terraform state, a
		// 'terraform apply'
		// or 'terraform destroy' that would delete the StoragePool will
		// fail.
		// When the field is set to false, deleting the StoragePool is
		// allowed.
		deletion_protection?: bool

		// A description of this resource. Provide this property when you
		// create the resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The unique identifier for the resource. This identifier is
		// defined by the server.
		id?: string

		// Type of the resource.
		kind?: string

		// The fingerprint used for optimistic locking of this resource.
		// Used internally during updates.
		label_fingerprint?: string

		// Labels to apply to this storage pool. These can be later
		// modified by the setLabels method.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Name of the resource. Provided by the client when the resource
		// is created.
		// The name must be 1-63 characters long, and comply with RFC1035.
		// Specifically, the name must be 1-63 characters long and match
		// the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?'
		// which means the first character must be a lowercase letter,
		// and all following characters must be a dash, lowercase letter,
		// or digit,
		// except the last character, which cannot be a dash.
		name!: string

		// Provisioning type of the performance-related parameters of the
		// pool, such as throughput and IOPS. Possible values:
		// ["STANDARD", "ADVANCED"]
		performance_provisioning_type?: string

		// Size, in GiB, of the storage pool. For more information about
		// the size limits,
		// see https://cloud.google.com/compute/docs/disks/storage-pools.
		pool_provisioned_capacity_gb?: string

		// Provisioned IOPS of the storage pool.
		// Only relevant if the storage pool type is 'hyperdisk-balanced'.
		pool_provisioned_iops?: string

		// Provisioned throughput, in MB/s, of the storage pool.
		// Only relevant if the storage pool type is 'hyperdisk-balanced'
		// or 'hyperdisk-throughput'.
		pool_provisioned_throughput?: string
		project?:                     string

		// Status information for the storage pool resource.
		resource_status?: [...close({
			disk_count?:                             string
			last_resize_timestamp?:                  string
			max_total_provisioned_disk_capacity_gb?: string
			pool_used_capacity_bytes?:               string
			pool_used_iops?:                         string
			pool_used_throughput?:                   string
			pool_user_written_bytes?:                string
			total_provisioned_disk_capacity_gb?:     string
			total_provisioned_disk_iops?:            string
			total_provisioned_disk_throughput?:      string
		})]

		// Status information for the storage pool resource.
		status?: [...close({
			disk_count?:                             string
			last_resize_timestamp?:                  string
			max_total_provisioned_disk_capacity_gb?: string
			pool_used_capacity_bytes?:               string
			pool_used_iops?:                         string
			pool_used_throughput?:                   string
			pool_user_written_bytes?:                string
			total_provisioned_disk_capacity_gb?:     string
			total_provisioned_disk_iops?:            string
			total_provisioned_disk_throughput?:      string
		})]

		// Type of the storage pool. For example, the
		// following are valid values:
		//
		// *
		// 'https://www.googleapis.com/compute/v1/projects/{project_id}/zones/{zone}/storagePoolTypes/hyperdisk-balanced'
		// * 'hyperdisk-throughput'
		storage_pool_type?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// A reference to the zone where the storage pool resides.
		zone!: string
	})
}
