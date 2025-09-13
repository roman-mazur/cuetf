package res

#aws_vpc_ipv4_cidr_block_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_ipv4_cidr_block_association")
	close({
		cidr_block?: string
		id?:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		ipv4_ipam_pool_id?:   string
		ipv4_netmask_length?: number
		vpc_id!:              string
		timeouts?:            #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
