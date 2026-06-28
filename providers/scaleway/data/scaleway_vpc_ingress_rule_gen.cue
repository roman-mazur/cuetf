package data

#scaleway_vpc_ingress_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_vpc_ingress_rule")
	close({
		// The date and time of the creation of the ingress rule
		created_at?: string

		// The ingress rule description
		description?: string
		id?:          string

		// The ID of the VPC ingress rule
		ingress_rule_id?: string

		// Only ingress rules with the matching IP version will be
		// returned
		is_ipv6?: bool

		// The ID of the nexthop private network
		nexthop_private_network_id?: string

		// IP of the nexthop resource for the ingress rule
		nexthop_resource_ip?: string

		// The region you want to attach the resource to
		region?: string

		// Source IP range to which this rule applies (CIDR notation with
		// subnet mask)
		source?: string

		// The tags associated with the ingress rule
		tags?: [...string]

		// The date and time of the last update of the ingress rule
		updated_at?: string

		// The ID of the VPC the ingress rule belongs to
		vpc_id?: string
	})
}
