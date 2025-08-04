package res

#aws_vpc_ipv4_cidr_block_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_ipv4_cidr_block_association")
	close({
		timeouts?:            #timeouts
		cidr_block?:          string
		id?:                  string
		ipv4_ipam_pool_id?:   string
		ipv4_netmask_length?: number
		region?:              string
		vpc_id!:              string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
