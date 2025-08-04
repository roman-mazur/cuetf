package res

#aws_default_network_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_default_network_acl")
	close({
		arn?:                    string
		default_network_acl_id!: string
		id?:                     string
		owner_id?:               string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		subnet_ids?: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		egress?: matchN(1, [#egress, [...#egress]])
		ingress?: matchN(1, [#ingress, [...#ingress]])
		vpc_id?: string
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
