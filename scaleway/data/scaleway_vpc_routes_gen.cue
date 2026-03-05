package data

#scaleway_vpc_routes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_vpc_routes")
	close({
		id?: string

		// Only routes with an IPv6 destination will be returned
		is_ipv6?: bool

		// Only routes with a matching next hop private network ID will be
		// returned
		nexthop_private_network_id?: string

		// Only routes with a matching next hop resource ID will be
		// returned
		nexthop_resource_id?: string

		// Only Routes with a matching next hop resource type will be
		// returned
		nexthop_resource_type?: string

		// The region you want to attach the resource to
		region?: string

		// List of routes
		routes?: [...close({
			created_at?:                 string
			description?:                string
			destination?:                string
			id?:                         string
			nexthop_ip?:                 string
			nexthop_name?:               string
			nexthop_private_network_id?: string
			nexthop_resource_id?:        string
			nexthop_resource_type?:      string
			region?:                     string
			tags?: [...string]
			vpc_id?: string
		})]

		// Routes with these exact tags are listed.
		tags?: [...string]

		// Only routes within this VPC will be returned
		vpc_id?: string
	})
}
