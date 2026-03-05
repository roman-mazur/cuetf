package data

#scaleway_redis_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_redis_cluster")
	close({
		// List of acl rules.
		acl?: [...close({
			description?: string
			id?:          string
			ip?:          string
		})]

		// public TLS certificate used by redis cluster, empty if tls is
		// disabled
		certificate?: string

		// The ID of the Redis cluster
		cluster_id?: string

		// Number of nodes for the cluster.
		cluster_size?: number

		// The date and time of the creation of the Redis cluster
		created_at?: string
		id?:         string

		// Name of the redis cluster
		name?: string

		// Type of node to use for the cluster
		node_type?: string

		// Password of the user. Only one of `password` or `password_wo`
		// should be specified.
		password?: string

		// Password of the user in
		// [write-only](https://developer.hashicorp.com/terraform/language/manage-sensitive-data/write-only)
		// mode. Only one of `password` or `password_wo` should be
		// specified. `password_wo` will not be set in the Terraform
		// state. To update the `password_wo`, you must also update the
		// `password_wo_version`.
		password_wo?: string

		// The version of the
		// [write-only](https://developer.hashicorp.com/terraform/language/manage-sensitive-data/write-only)
		// password. To update the `password_wo`, you must also update
		// the `password_wo_version`.
		password_wo_version?: number

		// List of private IPv4 addresses associated with the resource
		private_ips?: [...close({
			address?: string
			id?:      string
		})]

		// Private network specs details
		private_network?: [...close({
			endpoint_id?: string
			id?:          string
			ips?: [...string]
			port?: number
			service_ips?: [...string]
			zone?: string
		})]

		// The project_id you want to attach the resource to
		project_id?: string

		// Public network specs details
		public_network?: [...close({
			id?: string
			ips?: [...string]
			port?: number
		})]

		// Map of settings to define for the cluster.
		settings?: [string]: string

		// List of tags ["tag1", "tag2", ...] attached to a redis cluster
		tags?: [...string]

		// Whether or not TLS is enabled.
		tls_enabled?: bool

		// The date and time of the last update of the Redis cluster
		updated_at?: string

		// Name of the user created when the cluster is created
		user_name?: string

		// Redis version of the cluster
		version?: string

		// The zone you want to attach the resource to
		zone?: string
	})
}
