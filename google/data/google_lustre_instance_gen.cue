package data

#google_lustre_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_lustre_instance")
	close({
		// The storage capacity of the instance in gibibytes (GiB).
		// Allowed values
		// are from '18000' to '954000', in increments of 9000.
		capacity_gib?: string

		// Timestamp when the instance was created.
		create_time?: string

		// A user-readable description of the instance.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The filesystem name for this instance. This name is used by
		// client-side
		// tools, including when mounting the instance. Must be eight
		// characters or
		// less and can only contain letters and numbers.
		filesystem?: string

		// Indicates whether you want to enable support for GKE clients.
		// By default,
		// GKE clients are not supported.
		gke_support_enabled?: bool
		id?:                  string

		// The name of the Managed Lustre instance.
		//
		// * Must contain only lowercase letters, numbers, and hyphens.
		// * Must start with a letter.
		// * Must be between 1-63 characters.
		// * Must end with a number or a letter.
		instance_id!: string

		// Labels as key value pairs.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location?: string

		// Mount point of the instance in the format
		// 'IP_ADDRESS@tcp:/FILESYSTEM'.
		mount_point?: string

		// Identifier. The name of the instance.
		name?: string

		// The full name of the VPC network to which the instance is
		// connected.
		// Must be in the format
		// 'projects/{project_id}/global/networks/{network_name}'.
		network?: string

		// The throughput of the instance in MB/s/TiB.
		// Valid values are 125, 250, 500, 1000.
		per_unit_storage_throughput?: string

		// The placement policy name for the instance in the format of
		// projects/{project}/locations/{location}/resourcePolicies/{resource_policy}
		placement_policy?: string
		project?:          string

		// The state of the instance.
		// Possible values:
		// STATE_UNSPECIFIED
		// ACTIVE
		// CREATING
		// DELETING
		// UPGRADING
		// REPAIRING
		// STOPPED
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Timestamp when the instance was last updated.
		update_time?: string

		// Zone of Lustre instance
		zone?: string
	})
}
