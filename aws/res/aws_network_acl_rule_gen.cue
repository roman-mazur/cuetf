package res

#aws_network_acl_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_network_acl_rule")
	close({
		cidr_block?: string
		egress?:     bool
		from_port?:  number
		icmp_code?:  number
		icmp_type?:  number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		id?:              string
		ipv6_cidr_block?: string
		network_acl_id!:  string
		protocol!:        string
		rule_action!:     string
		rule_number!:     number
		to_port?:         number
	})
}
