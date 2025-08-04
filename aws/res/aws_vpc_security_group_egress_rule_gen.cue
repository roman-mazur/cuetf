package res

#aws_vpc_security_group_egress_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_security_group_egress_rule")
	close({
		arn?:         string
		cidr_ipv4?:   string
		cidr_ipv6?:   string
		description?: string
		from_port?:   number
		id?:          string
		ip_protocol!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                       string
		prefix_list_id?:               string
		referenced_security_group_id?: string
		security_group_id!:            string
		security_group_rule_id?:       string
		tags?: [string]:     string
		tags_all?: [string]: string
		to_port?: number
	})
}
