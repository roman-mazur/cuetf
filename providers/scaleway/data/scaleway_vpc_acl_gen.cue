package data

#scaleway_vpc_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_vpc_acl")
	close({
		// The action to take for packets which do not match any rules
		default_policy?: string
		id?:             string

		// Defines whether this set of ACL rules is for IPv6 (false =
		// IPv4). Each Network ACL can have rules for only one IP type
		is_ipv6?: bool

		// The region you want to attach the resource to
		region?: string

		// The list of Network ACL rules
		rules?: [...close({
			action?:        string
			description?:   string
			destination?:   string
			dst_port_high?: number
			dst_port_low?:  number
			protocol?:      string
			source?:        string
			src_port_high?: number
			src_port_low?:  number
		})]

		// The VPC ID to look up the ACL for
		vpc_id!: string
	})
}
