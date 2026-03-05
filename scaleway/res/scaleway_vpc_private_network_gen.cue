package res

import "list"

#scaleway_vpc_private_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_vpc_private_network")
	close({
		// The date and time of the creation of the private network
		created_at?: string

		// Defines whether default v4 and v6 routes are propagated for
		// this Private Network
		enable_default_route_propagation?: bool
		ipv4_subnet?: matchN(1, [#ipv4_subnet, list.MaxItems(1) & [...#ipv4_subnet]])
		id?: string

		// The name of the private network
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string
		ipv6_subnets?: matchN(1, [#ipv6_subnets, [...#ipv6_subnets]])

		// The region you want to attach the resource to
		region?: string

		// The tags associated with private network
		tags?: [...string]

		// The date and time of the last update of the private network
		updated_at?: string

		// The VPC in which to create the private network
		vpc_id?: string
	})

	#ipv4_subnet: close({
		// The network address of the subnet in dotted decimal notation,
		// e.g., '192.168.0.0' for a '192.168.0.0/24' subnet
		address?: string

		// The date and time of the creation of the subnet
		created_at?: string

		// The subnet ID
		id?: string

		// The length of the network prefix, e.g., 24 for a 255.255.255.0
		// mask
		prefix_length?: number

		// The subnet CIDR
		subnet?: string

		// The subnet mask expressed in dotted decimal notation, e.g.,
		// '255.255.255.0' for a /24 subnet
		subnet_mask?: string

		// The date and time of the last update of the subnet
		updated_at?: string
	})

	#ipv6_subnets: close({
		// The network address of the subnet in dotted decimal notation,
		// e.g., '192.168.0.0' for a '192.168.0.0/24' subnet
		address?: string

		// The date and time of the creation of the subnet
		created_at?: string

		// The subnet ID
		id?: string

		// The length of the network prefix, e.g., 24 for a 255.255.255.0
		// mask
		prefix_length?: number

		// The subnet CIDR
		subnet?: string

		// The subnet mask expressed in dotted decimal notation, e.g.,
		// '255.255.255.0' for a /24 subnet
		subnet_mask?: string

		// The date and time of the last update of the subnet
		updated_at?: string
	})
}
