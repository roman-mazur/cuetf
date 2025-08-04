package res

#aws_default_network_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_default_network_acl")
	close({
		arn?:                    string
		default_network_acl_id!: string
		id?:                     string
		owner_id?:               string
		egress?: matchN(1, [#egress, [...#egress]])
		region?: string
		subnet_ids?: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_id?: string
		ingress?: matchN(1, [#ingress, [...#ingress]])
	})

	#egress: close({
		action!:          string
		cidr_block?:      string
		from_port!:       number
		icmp_code?:       number
		icmp_type?:       number
		ipv6_cidr_block?: string
		protocol!:        string
		rule_no!:         number
		to_port!:         number
	})

	#ingress: close({
		action!:          string
		cidr_block?:      string
		from_port!:       number
		icmp_code?:       number
		icmp_type?:       number
		ipv6_cidr_block?: string
		protocol!:        string
		rule_no!:         number
		to_port!:         number
	})
}
