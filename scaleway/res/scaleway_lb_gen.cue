package res

import "list"

#scaleway_lb: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_lb")
	close({
		private_network?: matchN(1, [#private_network, list.MaxItems(8) & [...#private_network]])
		timeouts?: #timeouts

		// Defines whether to automatically assign a flexible public IP to
		// the load balancer
		assign_flexible_ip?: bool

		// Defines whether to automatically assign a flexible public IPv6
		// to the load balancer
		assign_flexible_ipv6?: bool

		// The description of the lb
		description?: string

		// This boolean determines if private network attachments should
		// be managed externally through the
		// `scaleway_lb_private_network` resource. When set,
		// `private_network` must not be configured in this resource
		external_private_networks?: bool
		id?:                        string

		// The load-balance public IPv4 address
		ip_address?: string

		// List of IP IDs to attach to the Load Balancer
		ip_ids?: [...string]

		// The load-balance public IPv6 address
		ipv6_address?: string

		// Name of the lb
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// List of private IPv4 and IPv6 addresses associated with the
		// resource
		private_ips?: [...close({
			address?: string
			id?:      string
		})]

		// The project_id you want to attach the resource to
		project_id?: string

		// The region of the resource
		region?: string

		// Enforces minimal SSL version (in SSL/TLS offloading context)
		ssl_compatibility_level?: string

		// Array of tags to associate with the load-balancer
		tags?: [...string]

		// The type of load-balancer you want to create
		type!: string

		// The zone you want to attach the resource to
		zone?: string
	})

	#private_network: close({
		// IPAM ID of a pre-reserved IP address to assign to the Load
		// Balancer on this Private Network
		ipam_ids?: [...string]

		// The Private Network ID
		private_network_id!: string

		// The status of private network connection
		status?: string

		// Zone
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
