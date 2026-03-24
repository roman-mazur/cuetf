package data

#scaleway_vpc_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_vpc_route")
	close({
		// The date and time of the creation of the route
		created_at?: string

		// The route description
		description?: string

		// The destination IP or IP range of the route
		destination?: string
		id?:          string

		// Only routes with an IPv6 destination will be returned
		is_ipv6?: bool

		// The ID of the nexthop private network
		nexthop_private_network_id?: string

		// The ID of the nexthop resource
		nexthop_resource_id?: string

		// Only routes with a matching next hop resource type will be
		// returned
		nexthop_resource_type?: string

		// The region you want to attach the resource to
		region?: string

		// The ID of the route
		route_id?: string

		// The tags associated with the Route
		tags?: [...string]

		// The date and time of the last update of the route
		updated_at?: string

		// VPC ID the Route belongs to
		vpc_id?: string
	})
}
