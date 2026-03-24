package res

import "list"

#scaleway_rdb_read_replica: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_rdb_read_replica")
	close({
		direct_access?: matchN(1, [#direct_access, list.MaxItems(1) & [...#direct_access]])
		private_network?: matchN(1, [#private_network, list.MaxItems(1) & [...#private_network]])
		timeouts?: #timeouts
		id?:       string

		// Id of the rdb instance to replicate
		instance_id!: string

		// The region you want to attach the resource to
		region?: string

		// Defines whether to create the replica in the same availability
		// zone as the main instance nodes or not.
		same_zone?: bool
	})

	#direct_access: close({
		// UUID of the endpoint (UUID format).
		endpoint_id?: string

		// Hostname of the endpoint. Only one of ip and hostname may be
		// set.
		hostname?: string

		// IPv4 address of the endpoint (IP address). Only one of ip and
		// hostname may be set.
		ip?: string

		// Name of the endpoint.
		name?: string

		// TCP port of the endpoint.
		port?: number
	})

	#private_network: close({
		// Whether or not the private network endpoint should be
		// configured with IPAM
		enable_ipam?: bool

		// UUID of the endpoint (UUID format).
		endpoint_id?: string

		// Hostname of the endpoint. Only one of ip and hostname may be
		// set
		hostname?: string

		// IPv4 address of the endpoint (IP address). Only one of ip and
		// hostname may be set
		ip?: string

		// Name of the endpoints
		name?: string

		// TCP port of the endpoint
		port?: number

		// UUID of the private network to be connected to the read replica
		// (UUID format)
		private_network_id!: string

		// The IP network address within the private subnet
		service_ip?: string

		// Private network zone
		zone?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
