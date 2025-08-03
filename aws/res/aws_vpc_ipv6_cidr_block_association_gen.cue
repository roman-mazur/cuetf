package res

#aws_vpc_ipv6_cidr_block_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_ipv6_cidr_block_association")
	close({
		assign_generated_ipv6_cidr_block?: bool
		timeouts?:                         #timeouts
		id?:                               string
		ip_source?:                        string
		ipv6_address_attribute?:           string
		ipv6_cidr_block?:                  string
		ipv6_ipam_pool_id?:                string
		ipv6_netmask_length?:              number
		ipv6_pool?:                        string
		region?:                           string
		vpc_id!:                           string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
