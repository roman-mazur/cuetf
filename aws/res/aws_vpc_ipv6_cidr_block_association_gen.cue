package res

#aws_vpc_ipv6_cidr_block_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_ipv6_cidr_block_association")
	close({
		assign_generated_ipv6_cidr_block?: bool
		id?:                               string
		ip_source?:                        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                 string
		ipv6_address_attribute?: string
		ipv6_cidr_block?:        string
		ipv6_ipam_pool_id?:      string
		timeouts?:               #timeouts
		ipv6_netmask_length?:    number
		ipv6_pool?:              string
		vpc_id!:                 string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
