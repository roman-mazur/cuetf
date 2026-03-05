package res

#scaleway_vpc_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_vpc_acl")
	close({
		rules?: matchN(1, [#rules, [...#rules]])

		// The action to take for packets which do not match any rules
		default_policy?: string
		id?:             string

		// Defines whether this set of ACL rules is for IPv6 (false =
		// IPv4). Each Network ACL can have rules for only one IP type
		is_ipv6?: bool

		// The region you want to attach the resource to
		region?: string

		// The VPC in which to create the ACL rule
		vpc_id!: string
	})

	#rules: close({
		// The policy to apply to the packet
		action?: string

		// The rule description
		description?: string

		// Destination IP range to which this rule applies (CIDR notation
		// with subnet mask)
		destination?: string

		// Ending port of the destination port range to which this rule
		// applies (inclusive)
		dst_port_high?: number

		// Starting port of the destination port range to which this rule
		// applies (inclusive)
		dst_port_low?: number

		// The protocol to which this rule applies. Default value: ANY
		protocol?: string

		// Source IP range to which this rule applies (CIDR notation with
		// subnet mask)
		source?: string

		// Ending port of the source port range to which this rule applies
		// (inclusive)
		src_port_high?: number

		// Starting port of the source port range to which this rule
		// applies (inclusive)
		src_port_low?: number
	})
}
