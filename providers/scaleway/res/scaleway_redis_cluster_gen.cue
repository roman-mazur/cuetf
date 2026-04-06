package res

import "list"

#scaleway_redis_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_redis_cluster")
	close({
		acl?: matchN(1, [#acl, [...#acl]])
		private_ips?: matchN(1, [#private_ips, [...#private_ips]])
		private_network?: matchN(1, [#private_network, [...#private_network]])
		public_network?: matchN(1, [#public_network, list.MaxItems(1) & [...#public_network]])
		timeouts?: #timeouts

		// public TLS certificate used by redis cluster, empty if tls is
		// disabled
		certificate?: string

		// Number of nodes for the cluster.
		cluster_size?: number

		// The date and time of the creation of the Redis cluster
		created_at?: string
		id?:         string

		// Name of the redis cluster
		name?: string

		// Type of node to use for the cluster
		node_type!: string

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

		// The project_id you want to attach the resource to
		project_id?: string

		// Map of settings to define for the cluster.
		settings?: [string]: string

		// List of tags ["tag1", "tag2", ...] attached to a redis cluster
		tags?: [...string]

		// Whether or not TLS is enabled.
		tls_enabled?: bool

		// The date and time of the last update of the Redis cluster
		updated_at?: string

		// Name of the user created when the cluster is created
		user_name!: string

		// Redis version of the cluster
		version!: string

		// The zone you want to attach the resource to
		zone?: string
	})

	#acl: close({
		// Description of the rule.
		description?: string

		// ID of the rule (UUID format).
		id?: string

		// IPv4 network address of the rule in CIDR notation (IPv6 is not
		// supported by the Scaleway API).
		ip!: string
	})

	#private_ips: close({
		// The private IPv4 address
		address?: string

		// The ID of the IPv4 address resource
		id?: string
	})

	#private_network: close({
		// UUID of the endpoint to be connected to the cluster
		endpoint_id?: string

		// UUID of the private network to be connected to the cluster
		id!: string

		// List of IPv4 addresses of the endpoint
		ips?: [...string]

		// TCP port of the endpoint
		port?: number

		// List of IPv4 addresses of the private network in CIDR notation
		// (IPv6 is not supported by the Scaleway API)
		service_ips?: [...string]

		// The zone of the resource
		zone?: string
	})

	#public_network: close({
		// UUID of the public network to be connected to the cluster
		id?: string

		// List of IPv4 addresses of the endpoint
		ips?: [...string]

		// TCP port of the endpoint
		port?: number
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	})
}
