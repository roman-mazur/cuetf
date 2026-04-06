package data

#scaleway_mongodb_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_mongodb_instance")
	close({
		// The date and time of the creation of the MongoDB instance
		created_at?: string
		id?:         string

		// instance id
		instance_id?: string

		// Enable or disable automatic snapshot scheduling
		is_snapshot_schedule_enabled?: bool

		// Name of the MongoDB cluster
		name?: string

		// Number of nodes in the instance
		node_number?: number

		// Type of node to use for the instance
		node_type?: string

		// Password of the user. Only one of `password` or `password_wo`
		// should be specified.
		password?: string

		// Password of the user in
		// [write-only](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/guides/using-write-only-arguments)
		// mode. Only one of `password` or `password_wo` should be
		// specified. `password_wo` will not be set in the Terraform
		// state. To update the `password_wo`, you must also update the
		// `password_wo_version`.
		password_wo?: string

		// The version of the
		// [write-only](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/guides/using-write-only-arguments)
		// password. To update the `password_wo`, you must also update
		// the `password_wo_version`.
		password_wo_version?: number

		// The private IPv4 address associated with the resource
		private_ip?: [...close({
			address?: string
			id?:      string
		})]

		// Private network to expose your mongodb instance
		private_network?: [...close({
			dns_records?: [...string]
			id?: string
			ips?: [...string]
			pn_id?: string
			port?:  number
		})]

		// The project_id you want to attach the resource to
		project_id?: string

		// Public network specs details
		public_network?: [...close({
			dns_record?: string
			id?:         string
			port?:       number
		})]

		// The region you want to attach the resource to
		region?: string

		// Map of settings to define for the instance.
		settings?: [string]: string

		// Snapshot ID to restore the MongoDB instance from
		snapshot_id?: string

		// Snapshot schedule frequency in hours
		snapshot_schedule_frequency_hours?: number

		// Snapshot schedule retention in days
		snapshot_schedule_retention_days?: number

		// List of tags ["tag1", "tag2", ...] attached to a MongoDB
		// instance
		tags?: [...string]

		// PEM-encoded TLS certificate for MongoDB
		tls_certificate?: string

		// The date and time of the last update of the MongoDB instance
		updated_at?: string

		// Name of the user created when the cluster is created
		user_name?: string

		// MongoDB version of the instance
		version?: string

		// Volume size (in GB)
		volume_size_in_gb?: number

		// Volume type of the instance
		volume_type?: string
	})
}
